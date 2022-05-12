library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Temp2 is
	port (d2 : IN STD_LOGIC_VECTOR(15 downto 0);
				Mem_D : IN STD_LOGIC_VECTOR(15 downto 0);
				SE7 : IN STD_LOGIC_VECTOR(15 downto 0);
				SE10 : IN STD_LOGIC_VECTOR(15 downto 0);
				current_state : IN STD_LOGIC_VECTOR(4 downto 0);

				output : OUT STD_LOGIC_VECTOR(15 downto 0));
				--t2_write : OUT STD_LOGIC);
end Temp2;

architecture beh of Temp2 is
  constant S3 : std_logic_vector(4 downto 0):= "00011";
  constant S6: STD_LOGIC_VECTOR(4 downto 0) := "00110";
  constant S14: STD_LOGIC_VECTOR(4 downto 0) := "01110";
  constant S19: STD_LOGIC_VECTOR(4 downto 0) := "10011";
  constant S21: STD_LOGIC_VECTOR(4 downto 0) := "10101";
  constant S24: STD_LOGIC_VECTOR(4 downto 0) := "11000";
  constant S27: STD_LOGIC_VECTOR(4 downto 0) := "11011";
  constant S31: STD_LOGIC_VECTOR(4 downto 0) := "11111";
  

  begin
    process (current_state, d2, Mem_D, SE7, SE10)
    begin
      case current_state is
        when S3|S6|S14 =>
				output <= d2;
				--t2_write <= '1';
					
			when S24|S27 =>
				output <= SE7;
		--		t2_write <= '1';
		
			when S21|S31 =>
				output <= SE10;
				
			when S19 =>
				output <= Mem_D;
			--	t2_write <= '1';
				
			when others =>
				output <= "0000000000000000";
				--t2_write <= '0';
				
      end case;
    end process;
end beh;
