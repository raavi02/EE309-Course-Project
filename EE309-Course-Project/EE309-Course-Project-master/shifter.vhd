library ieee;
use ieee.std_logic_1164.all;
 
entity shifter is
	port(
		state: in std_logic_vector(4 downto 0);
		opcode: in std_logic_vector(3 downto 0);
		T1, T2, SE7: in std_logic_vector(15 downto 0);
		B: out std_logic_vector(15 downto 0)
	);
end shifter;



architecture shift of shifter is

constant s4  : std_logic_vector(4 downto 0):= "00100";
constant s16  : std_logic_vector(4 downto 0):= "10000";
constant s17 : std_logic_vector(4 downto 0):= "10001";  
constant s32 : std_logic_vector(4 downto 0):= "11110";
constant s12 : std_logic_vector(4 downto 0):= "01100";

function rot(A: in std_logic_vector(15 downto 0); sel: in std_logic)
	return std_logic_vector is
		variable shift : std_logic_vector(15 downto 0):= (others=>'0');
	begin
		shift(15 downto 0):= A;
		if sel = '1' then
			shift(15 downto 7) := shift(8 downto 0);
			shift(6 downto 0) := "0000000";
		else 
			shift(15 downto 1) := shift(14 downto 0);
			shift(0) := '0';
		end if;
	return shift;
end rot;

begin
process(state, T1,T2,SE7)
begin
	case state is
		when s4 =>
			if(opcode(1) = '1' and opcode(0) = '1') then
				B <= rot(T2,'0');
			end if;
		when s16|s17 =>
			B <= rot(T1, '0');
		when s12|s32 =>
			B <= rot(SE7, '1');
		when others => 
			null;
	end case;
end process;
end shift;