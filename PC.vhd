library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity PC is
	port (d2 : IN STD_LOGIC_VECTOR(15 downto 0);
				alu_out: IN STD_LOGIC_VECTOR(15 downto 0);
				current_state : IN STD_LOGIC_VECTOR(4 downto 0);

				output : OUT STD_LOGIC_VECTOR(15 downto 0);
				pc_write : OUT STD_LOGIC);
end PC;


architecture beh of PC is
  constant S1 : std_logic_vector(4 downto 0):= "00001";
  constant S22: STD_LOGIC_VECTOR(4 downto 0) := "10110";
  constant S25: STD_LOGIC_VECTOR(4 downto 0) := "11001";

  begin
    process (current_state,d2,alu_out)
    begin
      case current_state is
        when S1|S22 =>
				output <= alu_out;
				pc_write <= '1';
					
			when S25 =>
				output <= d2;
				pc_write <= '1';
				
			when others =>
				output <= "0000000000000000";
				pc_write <= '0';
				
      end case;
    end process;
end beh;
