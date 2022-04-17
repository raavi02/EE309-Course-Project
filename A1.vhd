library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity A1 is
	port (ir9_11 : IN STD_LOGIC_VECTOR(2 downto 0);
				current_state : IN STD_LOGIC_VECTOR(5 downto 0);

				output : OUT STD_LOGIC_VECTOR(2 downto 0));
end A1;


architecture beh of A1 is
  constant S3: STD_LOGIC_VECTOR(5 downto 0) := "000011";
  constant S10: STD_LOGIC_VECTOR(5 downto 0) := "001010";
  constant S27: STD_LOGIC_VECTOR(5 downto 0) := "011011";
  constant S31: STD_LOGIC_VECTOR(5 downto 0) := "011111";
  

  begin
    process (current_state, ir9_11)
    begin
      case current_state is
        when S3|S10|S27|S31 =>
				output <= ir9_11;
					
			when others =>
				output <= "0000000000000000";
				
      end case;
    end process;
end beh;