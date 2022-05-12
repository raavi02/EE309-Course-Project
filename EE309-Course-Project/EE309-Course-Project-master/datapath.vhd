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

constant s1  : std_logic_vector(4 downto 0):= "00001";  
constant s2  : std_logic_vector(4 downto 0):= "00010";
constant s3  : std_logic_vector(4 downto 0):= "00011";
constant s4  : std_logic_vector(4 downto 0):= "00100";
constant s5  : std_logic_vector(4 downto 0):= "00101";
constant s6  : std_logic_vector(4 downto 0):= "00110";
constant s7  : std_logic_vector(4 downto 0):= "00111";
constant s8  : std_logic_vector(4 downto 0):= "01000";
constant s9  : std_logic_vector(4 downto 0):= "01001";  
constant s10 : std_logic_vector(4 downto 0):= "01010";
constant s11 : std_logic_vector(4 downto 0):= "01011";
constant s12 : std_logic_vector(4 downto 0):= "01100";
constant s13 : std_logic_vector(4 downto 0):= "01101";
constant s14 : std_logic_vector(4 downto 0):= "01110";
constant s15 : std_logic_vector(4 downto 0):= "01111";
constant s16 : std_logic_vector(4 downto 0):= "10000";
constant s17 : std_logic_vector(4 downto 0):= "10001";  
constant s18 : std_logic_vector(4 downto 0):= "10010";
constant s19 : std_logic_vector(4 downto 0):= "10011";
constant s20 : std_logic_vector(4 downto 0):= "10100";
constant s21 : std_logic_vector(4 downto 0):= "10101";
constant s22 : std_logic_vector(4 downto 0):= "10110";
constant s23 : std_logic_vector(4 downto 0):= "10111";
constant s24 : std_logic_vector(4 downto 0):= "11000";
constant s25 : std_logic_vector(4 downto 0):= "11001";  
constant s27 : std_logic_vector(4 downto 0):= "11011";
constant s31 : std_logic_vector(4 downto 0):= "11111";
constant s32 : std_logic_vector(4 downto 0):= "11110";

signal RFA3,RFA2,RFA1,count_temp: std_logic_vector(2 downto 0);
signal RFD3, RFD1, RFD2, T0_out, T1_out, T2_out, ALU_OUT, PC_OUT, Mem_D_out, Mem_I_out, shifter_out, se10_out, se7_out,instr_temp: std_logic_vector(15 downto 0);
signal RF_write,inc,rst: std_logic;
begin

RF: entity work.register_file port map(D1 => RFD1, D2 => RFD2,D3 =>RFD3 ,A1 =>RFA1 ,A2=>RFA2 ,A3=> RFA3, clk => clk,write_signal => RF_write ,clr =>clr );
A3: entity work.A3 port map(ir3_5 => instr_temp(5 downto 3), ir9_11 => instr_temp(11 downto 9), count =>count_temp , current_state =>current_state,output => RFA3);
A2: entity work.A2 port map(ir6_8 => instr_temp(8 downto 6), count =>count_temp , current_state =>current_state,output => RFA2);
A1: entity work.A1 port map(ir9_11 => instr_temp(11 downto 9), current_state =>current_state,output => RFA1);
D3: entity work.D3 port map(t2 => T2_OUT, t0 => T0_OUT, shifter => shifter_out, PC => PC_OUT , current_state => current_state, output => RFD3);
shifter: entity work.shifter port map(state => current_state, opcode => instr_temp(15 downto 12),T1 => T1_out, T2 => T2_out, SE7 => se7_out, B=> shifter_out);
T0: entity work.Temp0 port map(d3 => RFD3,alu_out => ALU_OUT , current_state => current_state, Mem_D => Mem_D_out, output => T0_out);
T1: entity work.Temp1 port map(d1 => RFD1, Shifter => shifter_out , SE=> se10_out, alu_out => ALU_OUT, current_state => current_state, output => T1_out );
T2: entity work.Temp2 port map(d2 => RFD2, Mem_D => Mem_D_out ,SE7 => se7_out, SE10 => se10_out, current_state => current_state , output => T2_out);
DMem: entity work.d_mem port map(T1 => T1_out, T2 => T2_out, Dout => Mem_D_out, Addr => T0_OUT, state => current_state, clk => clk);
IMem: entity work.i_mem port map(Dout => Mem_I_out, Addr => PC_OUT, state => current_state, clk => clk);
ALU: entity work.alu port map(pc_out => PC_OUT, t0_out => T0_out, t1_out => T1_out,t2_out =>T2_out,alu_c => ALU_OUT , current_state => current_state, clk => clk, carry_flag => carry_flag , zero_flag => zero_flag );
PC: entity work.PC port map(d2 => RFD2, alu_out => ALU_OUT, current_state => current_state, output=> PC_OUT);
IR: entity work.IR port map(Mem_d => Mem_I_out,current_state =>current_state ,output => instr_temp); 
count: entity work.count port map(inc => inc, rst => rst, op=> count_temp);
SE10 : entity work.SE10 port map(state => current_state, IR => instr_temp(5 downto 0), B => se10_out);
SE7 : entity work.SE7 port map(state => current_state, IR => instr_temp(8 downto 0), B => se7_out);

process(current_state)
begin

	--RF_write

	case current_state is

		when s2|s5|s9|s16|s20|s23|s24|s25|s32 =>
			RF_write <= '1';
			
		when others =>
			RF_write <= '0';
			
	end case;

	--inc,rst

	case current_state is

		when s12 =>
			rst <= '1';
			inc <= '0';
			
		when s16|s17 => 
			rst <= '0';
			inc <= '1';
			
		when others =>
			rst <= '0';
			inc <= '1';
			
	end case;
end process;

count_output <= count_temp;
instruction <= instr_temp;


end architecture;