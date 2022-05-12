library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Temp1 is
	port (d1 : IN STD_LOGIC_VECTOR(15 downto 0);
				Shifter : IN STD_LOGIC_VECTOR(15 downto 0);
				SE : IN STD_LOGIC_VECTOR(15 downto 0);
				alu_out : IN STD_LOGIC_VECTOR(15 downto 0);
				current_state : IN STD_LOGIC_VECTOR(4 downto 0);

				output : OUT STD_LOGIC_VECTOR(15 downto 0));
				--t1_write : OUT STD_LOGIC);
end Temp1;

architecture beh of Temp1 is
  constant S3 : std_logic_vector(4 downto 0):= "00011";
  constant S6: STD_LOGIC_VECTOR(4 downto 0) := "00110";
  constant S7: STD_LOGIC_VECTOR(4 downto 0) := "00111";
  constant S10: STD_LOGIC_VECTOR(4 downto 0) := "01010";
  constant S12: STD_LOGIC_VECTOR(4 downto 0) := "01100";
  constant S16: STD_LOGIC_VECTOR(4 downto 0) := "10000";
  constant S17: STD_LOGIC_VECTOR(4 downto 0) := "10001";
  constant S27: STD_LOGIC_VECTOR(4 downto 0) := "11011";
  constant S31: STD_LOGIC_VECTOR(4 downto 0) := "11111";
  

  begin
    process (current_state, d1,SE,Shifter,alu_out)
    begin
      case current_state is
        when S3|S10|S27|S31 =>
				output <= d1;
				--t1_write <= '1';
					
			when S12|S16|S17 =>
				output <= Shifter;
				--t1_write <= '1';
				
			when S6 =>
				output <= SE;
				--t1_write <= '1';
				
			when S7 =>
				output <= alu_out;
				--t1_write <= '1';
				
			when others =>
				output <= "0000000000000000";
				--t1_write <= '0';
				
      end case;
    end process;
end beh;
