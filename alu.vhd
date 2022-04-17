library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
port( alu_a, alu_b: in std_logic_vector(15 downto 0);
      alu_c: out std_logic_vector(15 downto 0);
		carry_flag,zero_flag: out std_logic;
	clk: in std_logic;
	selop: in std_logic_vector(1 downto 0);
	cop:in std_logic_vector(1 downto 0)
	);
end alu;


architecture func of alu is
-----------------
function add(A: in std_logic_vector(15 downto 0); B: in std_logic_vector(15 downto 0))
        return std_logic_vector is
            -- Declare "sum" and "carry" variable
				variable sum,carry: std_logic_vector(16 downto 0) := (others => '0');
				--variable carry: std_logic_vector(15 downto 0) := (others => '0');
            -- you can use aggregate to initialize the variables & signals as shown below
            --    variable variable_name : std_logic_vector(3 downto 0) := (others => '0');
        begin
            -- write logic for addition
            -- Hint: Use for loop
				sum(0):= A(0) xor B(0);
				carry(0):= A(0) and B(0);
				addit: for i in 1 to 15 loop
				   carry(i) := (A(i) and B(i)) or (carry(i-1) and A(i)) or (carry(i-1) and B(i));
					sum(i) := carry(i - 1) xor A(i) xor B(i);
					end loop addit;
				sum(16) := carry(15);
				return sum;
    end add;
--------------
begin
alu1: process(clk,alu_a,alu_b,selop, cop) is
variable sum: std_logic_vector(16 downto 0);
variable temp: std_logic_vector(15 downto 0);
variable subb: std_logic_vector(16 downto 0);
variable c:std_logic;
begin
if falling_edge(clk) then
sum := add(alu_a,alu_b);
if(selop="00") then
   temp := sum(15 downto 0);
	carry_flag <= sum(16);
	--take care of carry
end if;
if(selop = "01") then
   temp := alu_a nand alu_b;
end if;
if(selop = "10") then
   temp := alu_a and alu_b;
end if;
if(cop = "00") then
   temp := alu_a xor "0000000000000001";
end if;
if(cop = "01") then
   c:= '0';
	subbit: for i in 0 to 15 loop
		temp(i):= alu_a(i) xor '1' xor c;
		c:= alu_a(i) and '1';
		end loop;
end if;
if(cop = "10") then
   temp := alu_a and "1000000000000000";
end if;



if (to_integer(unsigned(temp)) = 0) then
zero_flag <= '1';

end if;
alu_C <= temp;
end if;
end process;
end architecture;