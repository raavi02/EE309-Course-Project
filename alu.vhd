library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
port( pc_out, t0_out, t1_out,t2_out: in std_logic_vector(15 downto 0);
      alu_c: out std_logic_vector(15 downto 0);
		carry_flag,zero_flag: out std_logic;
	clk: in std_logic;
	current_state : in std_logic_vector(4 downto 0)
	);
end alu;


architecture func of alu is
  constant S1 : std_logic_vector(4 downto 0):= "00001";
  constant S4 : std_logic_vector(4 downto 0):= "00100";
  constant S7 : std_logic_vector(4 downto 0):= "00111";
  constant S10 : std_logic_vector(4 downto 0):= "01010";
  constant S13: STD_LOGIC_VECTOR(4 downto 0) := "01101";
  constant S15: STD_LOGIC_VECTOR(4 downto 0) := "01111";
  constant S18: STD_LOGIC_VECTOR(4 downto 0) := "10010";
  constant S19: STD_LOGIC_VECTOR(4 downto 0) := "10011";
  constant S21: STD_LOGIC_VECTOR(4 downto 0) := "10101";
  constant s22 : std_logic_vector(4 downto 0):= "10110";
  constant S24: STD_LOGIC_VECTOR(4 downto 0) := "11000";

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
signal op: std_logic_vector(2 downto 0) :="000";
signal alu_a, alu_b: std_logic_vector(15 downto 0) :="0000000000000000";

begin
alu1: process(clk,alu_a,alu_b,op) is
variable sum: std_logic_vector(16 downto 0);
variable temp: std_logic_vector(15 downto 0);
variable subb,add1: std_logic_vector(15 downto 0);
begin
if falling_edge(clk) then
if(op = "000") then
   temp := alu_a;
elsif(op="001") then
   sum := add(alu_a,alu_b);
   temp := sum(15 downto 0);
	carry_flag <= sum(16);
	--take care of carry
elsif(op = "010") then
   temp := alu_a nand alu_b;
elsif(op = "011") then
   temp := alu_a and alu_b;
elsif(op = "100") then
   add1:= "0000000000000001";
   sum := add(alu_a,add1);
	temp := sum(15 downto 0);
elsif(op = "101") then
  subb :="1111111111111111";
  sum := add(alu_a,subb);
  temp := sum(15 downto 0);
elsif(op = "110") then
   temp := alu_a and "1000000000000000";
end if;


if (to_integer(unsigned(temp)) = 0) then
zero_flag <= '1';
end if;
alu_C <= temp;

end if;
end process;

alu2:process(current_state)
begin
	case current_state is
	when S15|S19 =>
        op <="100";
		  alu_a<=t0_out;
		  
	when S1=>
		op <="100";
		alu_a<=pc_out;
		
	when S4 =>
	  op<="010";
	  alu_a<=t1_out;
	  alu_b<=t2_out;
	  
	when S7|S10 =>
	  op<="001";
	  alu_a<=t1_out;
	  alu_b<=t2_out;
	  
	 when S22=>
	  op<="001";
	  alu_a<=t0_out;
	  alu_b<=t2_out;
	  
	when S13 =>
	  op<="110";
	  alu_a<=t1_out;
	when S21|S24 =>
	  op<="101";
	  alu_a<=t0_out;
	when others =>
	  op<="000";
	  alu_a<="0000000000000000";
	end case;

end process;

end architecture;