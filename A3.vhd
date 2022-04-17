library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity A3 is
	port (ir3_5 : IN STD_LOGIC_VECTOR(2 downto 0);
				ir9_11 : IN STD_LOGIC_VECTOR(2 downto 0);
				count : IN STD_LOGIC_VECTOR(2 downto 0);
				current_state : IN STD_LOGIC_VECTOR(5 downto 0);

				output : OUT STD_LOGIC_VECTOR(2 downto 0));
end A3;


architecture beh of A3 is
  constant S2: STD_LOGIC_VECTOR(5 downto 0) := "000010";
  constant S5: STD_LOGIC_VECTOR(5 downto 0) := "000101";
  constant S9: STD_LOGIC_VECTOR(5 downto 0) := "001001";
  constant S14: STD_LOGIC_VECTOR(5 downto 0) := "001110";
  constant S16: STD_LOGIC_VECTOR(5 downto 0) := "010000";
  constant S18: STD_LOGIC_VECTOR(5 downto 0) := "010010";
  constant S20: STD_LOGIC_VECTOR(5 downto 0) := "010100";
  constant S23: STD_LOGIC_VECTOR(5 downto 0) := "010111";
  constant S24: STD_LOGIC_VECTOR(5 downto 0) := "011000";
  constant S25: STD_LOGIC_VECTOR(5 downto 0) := "011001";
  constant S32: STD_LOGIC_VECTOR(5 downto 0) := "100000";
  
  

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