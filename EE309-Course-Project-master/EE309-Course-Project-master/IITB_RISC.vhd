library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity IITB_RISC is
clk,rst: in std_logic;

end entity;

architecture f of IITB_RISC is
signal instruction: std_logic_vector(15 downto 0);
signal C, Z:std_logic;
signal count_val: std_logic_vector(2 downto 0);
begin
controller: entity work.fsm_controller port map(opcode <= instruction(15 downto 12), CZ <= instruction(1 downto 0),count <= count_val ,C <= C,Z<=Z ,clk<= clk);
datapath: entity work.datapath port map(current_state <= current_state, instruction <= instruction, clk <= clk, clr <= RST, carry_flag <= C, zero_flag <= Z, count_output <= count_val);
end architecture;