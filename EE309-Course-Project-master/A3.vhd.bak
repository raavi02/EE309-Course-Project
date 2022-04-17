library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity A3 is
	port (ir3_5 : IN STD_LOGIC_VECTOR(2 downto 0);
				ir9_11 : IN STD_LOGIC_VECTOR(2 downto 0);
				count : IN STD_LOGIC_VECTOR(2 downto 0);
				current_state : IN STD_LOGIC_VECTOR(4 downto 0);

				output : OUT STD_LOGIC_VECTOR(2 downto 0));
end A3;


architecture beh of A3 is
  constant S2 : std_logic_vector(4 downto 0):= "00010";
  constant S5 : std_logic_vector(4 downto 0):= "00101";
  constant S9 : std_logic_vector(4 downto 0):= "01001";
  constant S14: STD_LOGIC_VECTOR(4 downto 0) := "01110";
  constant S16: STD_LOGIC_VECTOR(4 downto 0) := "10000";
  constant S18: STD_LOGIC_VECTOR(4 downto 0) := "10010";
  constant S20: STD_LOGIC_VECTOR(4 downto 0) := "10100";
  constant S23: STD_LOGIC_VECTOR(4 downto 0) := "10111";
  constant S24: STD_LOGIC_VECTOR(4 downto 0) := "11000";
  constant S25: STD_LOGIC_VECTOR(4 downto 0) := "11001";
  constant S32: STD_LOGIC_VECTOR(4 downto 0) := "11110";
  
  

  begin
    process (current_state, ir3_5, ir9_11, count)
    begin
      case current_state is
        when S2|S23 =>
				output <= "111";
					
			when S9|S14|S16|S18|S24|S25|S32 =>
				output <= ir9_11;
				
			when S5 =>
				output <= ir3_5;
				
			when S20 =>
				output <= count;
				
			when others =>
				output <= "0000000000000000";
				
      end case;
    end process;
end beh;
