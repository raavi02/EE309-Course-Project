library ieee;
use ieee.std_logic_1164.all;
 
entity shifter is
	port(
		A: in std_logic_vector(15 downto 0);
		sel: in std_logic; --sel is 1 if shiftby7, 0 if shiftby1
		B: out std_logic_vector(15 downto 0)
	);
end entity;

architecture shift of shifter is

function rot(A: in std_logic_vector(15 downto 0); sel: in std_logic)
        return std_logic_vector is
            variable shift : std_logic_vector(15 downto 0):= (others=>'0');
        begin
            shift(15 downto 0):= A;
			if sel = '1' then
				shift(15 downto 7) := shift(8 downto 0);
				shift(6 downto 0) := "0000000";
			else 
				shift(15 downto 1) := shift(14 downto 0);
				shift(0) := '0';
			end if;
        return shift;
    end rot;

begin
process(A,sel)
begin
	B <= rot(A,sel);
end process;
end architecture;