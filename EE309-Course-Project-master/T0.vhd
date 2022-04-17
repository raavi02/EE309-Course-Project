library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity Temp0 is
	port (d3 : IN STD_LOGIC_VECTOR(15 downto 0);
				alu_out : IN STD_LOGIC_VECTOR(15 downto 0);
				current_state : IN STD_LOGIC_VECTOR(4 downto 0);

				output : OUT STD_LOGIC_VECTOR(15 downto 0));
				--t0_write : OUT STD_LOGIC);
end Temp0;

architecture beh of Temp0 is
  constant S1 : std_logic_vector(4 downto 0):= "00001";
  constant S4 : std_logic_vector(4 downto 0):= "00100";
  constant S7 : std_logic_vector(4 downto 0):= "00111";
  constant S10 : std_logic_vector(4 downto 0):= "01010";
  constant S13: STD_LOGIC_VECTOR(4 downto 0) := "01101";
  constant S14: STD_LOGIC_VECTOR(4 downto 0) := "01110";
  constant S15: STD_LOGIC_VECTOR(4 downto 0) := "01111";
  constant S18: STD_LOGIC_VECTOR(4 downto 0) := "10010";
  constant S19: STD_LOGIC_VECTOR(4 downto 0) := "10011";
  constant S21: STD_LOGIC_VECTOR(4 downto 0) := "10101";
  constant S24: STD_LOGIC_VECTOR(4 downto 0) := "11000";

  begin
    process (current_state, d3, alu_out)
    begin
      case current_state is
        when S14 | S18 =>
				output <= d3;
				--t0_write <= '1';
					
			when S1|S4|S7|S10|S13|S15|S19|S21|S24 =>
				output <= alu_out;
				--t0_write <= '1';
				
			when others =>
				output <= "0000000000000000";
				--t0_write <= '0';
				
      end case;
    end process;
end beh;
