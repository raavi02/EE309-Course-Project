library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity D3 is
	port (t2 : IN STD_LOGIC_VECTOR(15 downto 0);
				t0 : IN STD_LOGIC_VECTOR(15 downto 0);
				Shifter : IN STD_LOGIC_VECTOR(15 downto 0);
				PC : IN STD_LOGIC_VECTOR(15 downto 0);
				current_state : IN STD_LOGIC_VECTOR(5 downto 0);

				output : OUT STD_LOGIC_VECTOR(15 downto 0));
end D3;


architecture beh of D3 is
  constant S2: STD_LOGIC_VECTOR(5 downto 0) := "000010";
  constant S5: STD_LOGIC_VECTOR(5 downto 0) := "000101";
  constant S9: STD_LOGIC_VECTOR(5 downto 0) := "001001";
  constant S16: STD_LOGIC_VECTOR(5 downto 0) := "010000";
  constant S20: STD_LOGIC_VECTOR(5 downto 0) := "010100";
  constant S23: STD_LOGIC_VECTOR(5 downto 0) := "010111";
  constant S24: STD_LOGIC_VECTOR(5 downto 0) := "011000";
  constant S25: STD_LOGIC_VECTOR(5 downto 0) := "011001";
  constant S32: STD_LOGIC_VECTOR(5 downto 0) := "100000";
  

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