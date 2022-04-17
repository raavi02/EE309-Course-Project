library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity datapath is
port(
current_state : in std_logic_vector(4 downto 0);
instruction: out std_logic_vector(15 downto 0);
clr, clk: in std_logic;
carry_flag, zero_flag: out std_logic;
count_output: out std_logic_vector(2 downto 0)
);
end entity;


architecture struct of datapath is
signal RFA3,RFA2,RFA1: std_logic_vector(2 downto 0);
signal RFD3, RFD1, RFD2, T0_out, T1_out, T2_out, ALU_OUT, PC_OUT: std_logic_vector(15 downto 0);
signal RF_write: std_logic;
begin

RF: entity work.register_file port map(D1 => RFD1, D2 => RFD2,D3 =>RFD3 ,A1 =>RFA1 ,A2=>RFA2 ,A3=> RFA3, clk => clk,write_signal => ,clr =>clr );
A3: entity work.A3 port map(ir3_5 => instruction(5 downto 3), ir9_11 => instruction(11 downto 9), count => , current_state =>current_state,output => RFA3);
A2: entity work.A2 port map(ir6_8 => instruction(8 downto 6), count => , current_state =>current_state,output => RFA2);
A1 entity work.A1 port map(ir9_11 => instruction(11 downto 9), current_state =>current_state,output => RFA1);
D3: entity work.D3 port map(t2 => T2_OUT, t0 => T0_OUT, shifter => , PC => , current_state => current_state, output => RFD3);
shifter: entity work.shifter port map(A => , sel => ,B =>);
T0: entity work.Temp0 port map(d3 <= RFD3,alu_out <= ALU_OUT , current_state <= current_state, output <= T0_out);
T1: entity work.Temp1 port map(d1 <= RFD1, Shifter <= , SE<= ,alu_out <= , current_state <= current_state, output <= T1_out );
T2: entity work.Temp2 port map(d2 <= RFD2, Mem_D <= ,SE <= ,current_state <= current_state , output <= T2_out);
ALU: entity work.alu port map(alu_a <= , alu_b <= ,alu_c <= ALU_OUT , current_state <= current_state, clk <= clk, carry_flag <= , zero_flag <= );
PC: entity work.PC port map(d2 <= RFD2, alu_out <= ALU_OUT, current_state <= current_state, output<= PC_OUT);
IR: entity work.IR port map(Mem_d <= PC_OUT,current_state <=current_state ,output <= instruction); 
count: entity work.count port map(inc <= , rst <= , op<= count_output);

end architecture;