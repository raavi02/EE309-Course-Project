library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm_controller is
port(	
		opcode:in std_logic_vector(3 downto 0);
		CZ: in std_logic_vector(1 downto 0);
		count: in std_logic_vector(2 downto 0);
		C,Z : in std_logic;
		clk:in std_logic;
		output: out std_logic_vector(4 downto 0)
	);
end fsm_controller;

architecture state_machine of fsm_controller is

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

signal y_present: std_logic_vector(4 downto 0) :=s1;
signal y_next: std_logic_vector(4 downto 0) :=s1;

begin
output <= y_present;
update: process(clk)
begin
	if(falling_edge(clk)) then
		y_present <= y_next;
	end if;
end process;

next_state:process(y_present,opcode)
begin
	case y_present is
			when s1=>
				case opcode is
					when "1000" =>		--beq
						y_next<=s3;   
					when "1001" =>      --jal
						y_next<=s24;
					when "1010" =>		--jlr
						y_next<=s25;   
					when "1011" =>		--jri
						y_next<=s27;	
					when others =>
						y_next<=s2;
				end case;
				
			when s2=>
				case opcode is
					when "0000" =>  	--adi
						y_next<=s31;
					when "0011" =>      --lhi (changed opcode)
						y_next<=s32;    
					when "0111" | "0101" => 		--lw/sw
						y_next<=s6;
					when "1100" | "1101" => 		--lm/sm
						y_next<=s12;
					when others =>
						if((CZ = "01" and Z = '0') or (CZ = "10" and C = '0')) then 
							y_next<=s1;
						else
							y_next<=s3;
						end if;
				end case;			
				
			when s3 =>
				case opcode is
					when "1000" =>		--beq
						y_next<=s7;
					when others =>
						y_next<=s4;
				end case;
			
			when s31 =>
				y_next<=s4;
				
			when s32 =>
				y_next<=s1;
			
			when s4 =>
				y_next<=s5;
				
			when s5 =>
				y_next<=s1;
			
			when s6 =>
				case opcode is
					when "0111" => 		--lw
						y_next<=s7;
					when others =>		--sw
						y_next<=s10;
				end case;
			
			when s7 =>
				case opcode is 
					when "1000" => 		--beq
						y_next<=s21;
					when others =>
						y_next<=s8;		--lw
				end case;
				
			when s8 =>
				y_next<=s9;
				
			when s9 =>
				y_next<=s1;
				
			when s10 =>
				y_next<=s11;
				
			when s11 =>
				y_next<=s1;
				
			when s12 =>
				y_next<=s13;
				
			when s13 =>
				case opcode is 
					when "1100" =>		--lm
						y_next<=s18;
					when others => 		--sm
						y_next<=s14;
				end case;
				
			when s14 =>
				y_next<=s15;
				
			when s15 =>
				y_next<=s16;
				
			when s16 => 
				if(count = "000") then
					y_next<=s1;
				else
					y_next<=s13;
				end if;
				
			when s17 =>
				if(count = "000") then
					y_next<=s1;
				else
					y_next<=s13;
				end if;
			
			when s18 =>
				y_next<=s19;
			
			when s19 =>
				y_next<=s20;
			
			when s20 => 
				y_next<=s16;
			
			when s21 =>
				y_next<=s22;
			
			when s22 =>
				y_next<=s23;
				
			when s23 =>
				y_next<=s1;
			
			when s24 =>
				y_next<=s22;
			
			when s25 =>
				y_next<=s23;	
			
			when s27 =>
				y_next<=s22;
			
			when others =>
				y_next <= s1;
				
		end case;
end process;
end architecture;