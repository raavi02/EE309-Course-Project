library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity D3 is
	port (t2 : IN STD_LOGIC_VECTOR(15 downto 0);
				t0 : IN STD_LOGIC_VECTOR(15 downto 0);
				Shifter : IN STD_LOGIC_VECTOR(15 downto 0);
				PC : IN STD_LOGIC_VECTOR(15 downto 0);
				current_state : IN STD_LOGIC_VECTOR(4 downto 0);

				output : OUT STD_LOGIC_VECTOR(15 downto 0));
end D3;


architecture beh of D3 is
  constant S2 : std_logic_vector(4 downto 0):= "00010";
  constant S5 : std_logic_vector(4 downto 0):= "00101";
  constant S9 : std_logic_vector(4 downto 0):= "01001";
  constant S16: STD_LOGIC_VECTOR(4 downto 0) := "10000";
  constant S20: STD_LOGIC_VECTOR(4 downto 0) := "10100";
  constant S23: STD_LOGIC_VECTOR(4 downto 0) := "10111";
  constant S24: STD_LOGIC_VECTOR(4 downto 0) := "11000";
  constant S25: STD_LOGIC_VECTOR(4 downto 0) := "11001";
  constant S32: STD_LOGIC_VECTOR(4 downto 0) := "11110";
  

  begin
    process (current_state, t0, t2, Shifter, PC)
    begin
      case current_state is
        when S2|S23 =>
				output <= PC;
					
			when S5|S9|S16|S24|S25 =>
				output <= t0;
				
			when S20 =>
				output <= t2;
				
			when S32 =>
				output <= Shifter;
				
			when others =>
				output <= "0000000000000000";
				
      end case;
    end process;
end beh;
