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
		control_word: out std_logic_vector(16 downto 0); --16 is random, controller banke exact aayega.
	);
end fsm_controller;

architecture state_machine of fsm_controller is

---------------Define state type here-----------------------------
type state is (s1,s2,s3,s31,s32,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25);   
---------------Define signals of state type-----------------------
signal y_present: state :=s1;
signal y_next: state :=s1;

begin
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
		end case;
end process;
end architecture;