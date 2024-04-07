-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_5_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 32
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);
 
          address1        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1             : in std_logic; 
          q1              : out std_logic_vector(DataWidth-1 downto 0);
 
          address2        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce2             : in std_logic; 
          q2              : out std_logic_vector(DataWidth-1 downto 0);
 
          address3        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce3             : in std_logic; 
          q3              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of mm_mm_Pipeline_VITIS_LOOP_76_7_A_u3_29fixp_5_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address2_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address3_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00001010000000000000000000000000", 1 => "00001010000000000000000000000000", 2 => "00111100000000000000000000000000", 3 => "10001100000000000000000000000000", 
    4 => "01101110000000000000000000000000", 5 => "01101110000000000000000000000000", 6 => "00000000000000000000000000000000", 7 => "01010000000000000000000000000000", 
    8 => "00110010000000000000000000000000", 9 => "00110010000000000000000000000000", 10 => "01100100000000000000000000000000", 11 => "00010100000000000000000000000000", 
    12 => "10010110000000000000000000000000", 13 => "10010110000000000000000000000000", 14 => "00101000000000000000000000000000", 15 => "01111000000000000000000000000000", 
    16 => "01011010000000000000000000000000", 17 => "01011010000000000000000000000000", 18 => "10001100000000000000000000000000", 19 => "00111100000000000000000000000000", 
    20 => "00011110000000000000000000000000", 21 => "00011110000000000000000000000000", 22 => "01010000000000000000000000000000", 23 => "00000000000000000000000000000000", 
    24 => "10000010000000000000000000000000", 25 => "10000010000000000000000000000000", 26 => "00010100000000000000000000000000", 27 => "01100100000000000000000000000000", 
    28 => "01000110000000000000000000000000", 29 => "01000110000000000000000000000000", 30 => "01111000000000000000000000000000", 31 => "00101000000000000000000000000000");

signal mem1 : mem_array := (
    0 => "00001010000000000000000000000000", 1 => "00001010000000000000000000000000", 2 => "00111100000000000000000000000000", 3 => "10001100000000000000000000000000", 
    4 => "01101110000000000000000000000000", 5 => "01101110000000000000000000000000", 6 => "00000000000000000000000000000000", 7 => "01010000000000000000000000000000", 
    8 => "00110010000000000000000000000000", 9 => "00110010000000000000000000000000", 10 => "01100100000000000000000000000000", 11 => "00010100000000000000000000000000", 
    12 => "10010110000000000000000000000000", 13 => "10010110000000000000000000000000", 14 => "00101000000000000000000000000000", 15 => "01111000000000000000000000000000", 
    16 => "01011010000000000000000000000000", 17 => "01011010000000000000000000000000", 18 => "10001100000000000000000000000000", 19 => "00111100000000000000000000000000", 
    20 => "00011110000000000000000000000000", 21 => "00011110000000000000000000000000", 22 => "01010000000000000000000000000000", 23 => "00000000000000000000000000000000", 
    24 => "10000010000000000000000000000000", 25 => "10000010000000000000000000000000", 26 => "00010100000000000000000000000000", 27 => "01100100000000000000000000000000", 
    28 => "01000110000000000000000000000000", 29 => "01000110000000000000000000000000", 30 => "01111000000000000000000000000000", 31 => "00101000000000000000000000000000");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_2: process (address2) 
begin
      address2_tmp <= address2;
--synthesis translate_off
      if (CONV_INTEGER(address2) > AddressRange-1) then
           address2_tmp <= (others => '0');
      else 
           address2_tmp <= address2;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_3: process (address3) 
begin
      address3_tmp <= address3;
--synthesis translate_off
      if (CONV_INTEGER(address3) > AddressRange-1) then
           address3_tmp <= (others => '0');
      else 
           address3_tmp <= address3;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;
 
        if (ce1 = '1') then  
            q1 <= mem0(CONV_INTEGER(address1_tmp)); 
        end if;
 
        if (ce2 = '1') then  
            q2 <= mem1(CONV_INTEGER(address2_tmp)); 
        end if;
 
        if (ce3 = '1') then  
            q3 <= mem1(CONV_INTEGER(address3_tmp)); 
        end if;

end if;
end process;

end rtl;

