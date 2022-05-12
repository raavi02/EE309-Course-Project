library ieee;
use ieee.std_logic_1164.all;

entity SE7 is 
	port(
		state: in std_logic_vector(4 downto 0);
		IR: in std_logic_vector(8 downto 0);
		B: out std_logic_vector(15 downto 0)
	);
end SE7;

architecture se of SE7 is

constant s12 : std_logic_vector(4 downto 0):= "01100";
constant s24 : std_logic_vector(4 downto 0):= "11000";
constant s27 : std_logic_vector(4 downto 0):= "11011";
constant s32 : std_logic_vector(4 downto 0):= "11110";


begin 
process(IR, state)
variable temp: std_logic_vector(15 downto 0):= (others => '0');
variable ones: std_logic_vector(6 downto 0):= (others => '1');
begin
	temp := "0000000000000000";
    case state is
		when s12|s24|s27|s32 =>
		
			temp(8 downto 0) := IR;
			if IR(8) = '1' then
				temp(15 downto 9) := ones;
			end if;
			B <= temp;
			
		when others =>
			null;
	end case;
end process;
end architecture;
