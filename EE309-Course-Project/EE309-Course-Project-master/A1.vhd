library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity A1 is
	port (ir9_11 : IN STD_LOGIC_VECTOR(2 downto 0);
				current_state : IN STD_LOGIC_VECTOR(4 downto 0);

				output : OUT STD_LOGIC_VECTOR(2 downto 0));
end A1;


architecture beh of A1 is
  constant S3 : std_logic_vector(4 downto 0):= "00011";
  constant S10 : std_logic_vector(4 downto 0):= "01010";
  constant S27: STD_LOGIC_VECTOR(4 downto 0) := "11011";
  constant S31: STD_LOGIC_VECTOR(4 downto 0) := "11111";
  

  begin
    process (current_state, ir9_11)
    begin
      case current_state is
        when S3|S10|S27|S31 =>
				output <= ir9_11;
					
			when others =>
				output <= "000";
				
      end case;
    end process;
end beh;
