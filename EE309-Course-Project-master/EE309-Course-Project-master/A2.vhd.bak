library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity A2 is
	port (ir6_8 : IN STD_LOGIC_VECTOR(2 downto 0);
				Count : IN STD_LOGIC_VECTOR(2 downto 0);
				current_state : IN STD_LOGIC_VECTOR(4 downto 0);

				output : OUT STD_LOGIC_VECTOR(2 downto 0));
end A2;


architecture beh of A2 is
  constant S3 : std_logic_vector(4 downto 0):= "00011";
  constant S6: STD_LOGIC_VECTOR(4 downto 0) := "00110";
  constant S14: STD_LOGIC_VECTOR(4 downto 0) := "01110";
  constant S25: STD_LOGIC_VECTOR(4 downto 0) := "11001";
  

  begin
    process (current_state, ir6_8,Count)
    begin
      case current_state is
        when S3|S6|S25 =>
				output <= ir6_8;
					
			when S14 =>
				output <= Count;
				
			when others =>
				output <= "0000000000000000";
				
      end case;
    end process;
end beh;
