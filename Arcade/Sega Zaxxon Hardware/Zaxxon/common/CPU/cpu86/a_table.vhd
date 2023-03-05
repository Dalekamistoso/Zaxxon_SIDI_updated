-------------------------------------------------------------------------------
--  CPU86 - VHDL CPU8088 IP core                                             --
--  Copyright (C) 2002-2008 HT-LAB                                           --
--                                                                           --
--  Contact/bugs : http://www.ht-lab.com/misc/feedback.html                  --
--  Web          : http://www.ht-lab.com                                     --
--                                                                           --
--  CPU86 is released as open-source under the GNU GPL license. This means   --
--  that designs based on CPU86 must be distributed in full source code      --
--  under the same license. Contact HT-Lab for commercial applications where --
--  source-code distribution is not desirable.                               --
--                                                                           --
-------------------------------------------------------------------------------
--                                                                           --
--  This library is free software; you can redistribute it and/or            --
--  modify it under the terms of the GNU Lesser General Public               --
--  License as published by the Free Software Foundation; either             --
--  version 2.1 of the License, or (at your option) any later version.       --
--                                                                           --
--  This library is distributed in the hope that it will be useful,          --
--  but WITHOUT ANY WARRANTY; without even the implied warranty of           --
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU        --
--  Lesser General Public License for more details.                          --
--                                                                           --
--  Full details of the license can be found in the file "copying.txt".      --
--                                                                           --
--  You should have received a copy of the GNU Lesser General Public         --
--  License along with this library; if not, write to the Free Software      --
--  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA  --
--                                                                           --
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity a_table is
  port ( addr  : in std_logic_vector(15 downto 0);
         dout  : out std_logic_vector(2 downto 0));
end a_table;


architecture rtl of a_table is
begin
  process(addr)
  begin 
    case addr is 
       when "1110101100000000" => dout <= "001"; 
       when "1110100100000000" => dout <= "010"; 
       when "1111111111100000" => dout <= "000"; 
       when "1111111100100110" => dout <= "100"; 
       when "1111111100100000" => dout <= "000"; 
       when "1111111101100000" => dout <= "011"; 
       when "1111111110100000" => dout <= "100"; 
       when "1110101000000000" => dout <= "010"; 
       when "1111111100101110" => dout <= "100"; 
       when "1111111100101000" => dout <= "000"; 
       when "1111111101101000" => dout <= "011"; 
       when "1111111110101000" => dout <= "100"; 
       when "1110100000000000" => dout <= "010"; 
       when "1111111111010000" => dout <= "000"; 
       when "1111111100010110" => dout <= "100"; 
       when "1111111100010000" => dout <= "000"; 
       when "1111111101010000" => dout <= "011"; 
       when "1111111110010000" => dout <= "100"; 
       when "1001101000000000" => dout <= "010"; 
       when "1111111100011110" => dout <= "100"; 
       when "1111111100011000" => dout <= "000"; 
       when "1111111101011000" => dout <= "011"; 
       when "1111111110011000" => dout <= "100"; 
       when "1100001100000000" => dout <= "000"; 
       when "1100001000000000" => dout <= "000"; 
       when "1100101100000000" => dout <= "000"; 
       when "1100101000000000" => dout <= "000"; 
       when "0111010000000000" => dout <= "001"; 
       when "0111110000000000" => dout <= "001"; 
       when "0111111000000000" => dout <= "001"; 
       when "0111001000000000" => dout <= "001"; 
       when "0111011000000000" => dout <= "001"; 
       when "0111101000000000" => dout <= "001"; 
       when "0111000000000000" => dout <= "001"; 
       when "0111100000000000" => dout <= "001"; 
       when "0111010100000000" => dout <= "001"; 
       when "0111110100000000" => dout <= "001"; 
       when "0111111100000000" => dout <= "001"; 
       when "0111001100000000" => dout <= "001"; 
       when "0111011100000000" => dout <= "001"; 
       when "0111101100000000" => dout <= "001"; 
       when "0111000100000000" => dout <= "001"; 
       when "0111100100000000" => dout <= "001"; 
       when "1110001100000000" => dout <= "001"; 
       when "1110001000000000" => dout <= "001"; 
       when "1110000100000000" => dout <= "001"; 
       when "1110000000000000" => dout <= "001"; 
       when "1100110100000000" => dout <= "101"; 
       when "1100110000000000" => dout <= "110"; 
       when "1100111000000000" => dout <= "111"; 
       when "1100111100000000" => dout <= "000"; 
       when "1111100000000000" => dout <= "000"; 
       when "1111010100000000" => dout <= "000"; 
       when "1111100100000000" => dout <= "000"; 
       when "1111110000000000" => dout <= "000"; 
       when "1111110100000000" => dout <= "000"; 
       when "1111101000000000" => dout <= "000"; 
       when "1111101100000000" => dout <= "000"; 
       when "1111010000000000" => dout <= "000"; 
       when "1001101100000000" => dout <= "000"; 
       when "1111000000000000" => dout <= "000"; 
       when "1001000000000000" => dout <= "000"; 
       when "0010011000000000" => dout <= "000"; 
       when "0010111000000000" => dout <= "000"; 
       when "0011011000000000" => dout <= "000"; 
       when "0011111000000000" => dout <= "000"; 
       when "1000100011000000" => dout <= "000"; 
       when "1000100000000000" => dout <= "000"; 
       when "1000100001000000" => dout <= "011"; 
       when "1000100010000000" => dout <= "100"; 
       when "1000100000000110" => dout <= "100"; 
       when "1000100111000000" => dout <= "000"; 
       when "1000100100000000" => dout <= "000"; 
       when "1000100101000000" => dout <= "011"; 
       when "1000100110000000" => dout <= "100"; 
       when "1000100100000110" => dout <= "100"; 
       when "1000101011000000" => dout <= "000"; 
       when "1000101000000000" => dout <= "000"; 
       when "1000101001000000" => dout <= "011"; 
       when "1000101010000000" => dout <= "100"; 
       when "1000101000000110" => dout <= "100"; 
       when "1000101111000000" => dout <= "000"; 
       when "1000101100000000" => dout <= "000"; 
       when "1000101101000000" => dout <= "011"; 
       when "1000101110000000" => dout <= "100"; 
       when "1000101100000110" => dout <= "100"; 
       when "1100011000000000" => dout <= "000"; 
       when "1100011001000000" => dout <= "011"; 
       when "1100011010000000" => dout <= "100"; 
       when "1100011000000110" => dout <= "100"; 
       when "1100011100000000" => dout <= "000"; 
       when "1100011101000000" => dout <= "011"; 
       when "1100011110000000" => dout <= "100"; 
       when "1100011100000110" => dout <= "100"; 
       when "1011000000000000" => dout <= "000"; 
       when "1011000100000000" => dout <= "000"; 
       when "1011001000000000" => dout <= "000"; 
       when "1011001100000000" => dout <= "000"; 
       when "1011010000000000" => dout <= "000"; 
       when "1011010100000000" => dout <= "000"; 
       when "1011011000000000" => dout <= "000"; 
       when "1011011100000000" => dout <= "000"; 
       when "1011100000000000" => dout <= "000"; 
       when "1011100100000000" => dout <= "000"; 
       when "1011101000000000" => dout <= "000"; 
       when "1011101100000000" => dout <= "000"; 
       when "1011110000000000" => dout <= "000"; 
       when "1011110100000000" => dout <= "000"; 
       when "1011111000000000" => dout <= "000"; 
       when "1011111100000000" => dout <= "000"; 
       when "1010000000000000" => dout <= "010"; 
       when "1010000100000000" => dout <= "010"; 
       when "1010001000000000" => dout <= "010"; 
       when "1010001100000000" => dout <= "010"; 
       when "1000111011000000" => dout <= "000"; 
       when "1000111000000000" => dout <= "000"; 
       when "1000111001000000" => dout <= "011"; 
       when "1000111010000000" => dout <= "100"; 
       when "1000111000000110" => dout <= "100"; 
       when "1000110011000000" => dout <= "000"; 
       when "1000110000000000" => dout <= "000"; 
       when "1000110001000000" => dout <= "011"; 
       when "1000110010000000" => dout <= "100"; 
       when "1000110000000110" => dout <= "100"; 
       when "1111111100110000" => dout <= "000"; 
       when "1111111101110000" => dout <= "011"; 
       when "1111111110110000" => dout <= "100"; 
       when "1111111100110110" => dout <= "100"; 
       when "0101000000000000" => dout <= "000"; 
       when "0101000100000000" => dout <= "000"; 
       when "0101001000000000" => dout <= "000"; 
       when "0101001100000000" => dout <= "000"; 
       when "0101010000000000" => dout <= "000"; 
       when "0101010100000000" => dout <= "000"; 
       when "0101011000000000" => dout <= "000"; 
       when "0101011100000000" => dout <= "000"; 
       when "0000011000000000" => dout <= "000"; 
       when "0000111000000000" => dout <= "000"; 
       when "0001011000000000" => dout <= "000"; 
       when "0001111000000000" => dout <= "000"; 
       when "1000111100000000" => dout <= "000"; 
       when "1000111101000000" => dout <= "011"; 
       when "1000111110000000" => dout <= "100"; 
       when "1000111100000110" => dout <= "100"; 
       when "1000111111000000" => dout <= "000"; 
       when "0101100000000000" => dout <= "000"; 
       when "0101100100000000" => dout <= "000"; 
       when "0101101000000000" => dout <= "000"; 
       when "0101101100000000" => dout <= "000"; 
       when "0101110000000000" => dout <= "000"; 
       when "0101110100000000" => dout <= "000"; 
       when "0101111000000000" => dout <= "000"; 
       when "0101111100000000" => dout <= "000"; 
       when "0000011100000000" => dout <= "000"; 
       when "0001011100000000" => dout <= "000"; 
       when "0001111100000000" => dout <= "000"; 
       when "1000011011000000" => dout <= "000"; 
       when "1000011000000000" => dout <= "000"; 
       when "1000011001000000" => dout <= "011"; 
       when "1000011010000000" => dout <= "100"; 
       when "1000011000000110" => dout <= "100"; 
       when "1000011111000000" => dout <= "000"; 
       when "1000011100000000" => dout <= "000"; 
       when "1000011101000000" => dout <= "011"; 
       when "1000011110000000" => dout <= "100"; 
       when "1000011100000110" => dout <= "100"; 
       when "1001000100000000" => dout <= "000"; 
       when "1001001000000000" => dout <= "000"; 
       when "1001001100000000" => dout <= "000"; 
       when "1001010000000000" => dout <= "000"; 
       when "1001010100000000" => dout <= "000"; 
       when "1001011000000000" => dout <= "000"; 
       when "1001011100000000" => dout <= "000"; 
       when "1110010000000000" => dout <= "101"; 
       when "1110010100000000" => dout <= "101"; 
       when "1110110000000000" => dout <= "000"; 
       when "1110110100000000" => dout <= "000"; 
       when "1110011000000000" => dout <= "101"; 
       when "1110011100000000" => dout <= "101"; 
       when "1110111100000000" => dout <= "000"; 
       when "1110111000000000" => dout <= "000"; 
       when "1101011100000000" => dout <= "000"; 
       when "1001111100000000" => dout <= "000"; 
       when "1001111000000000" => dout <= "000"; 
       when "1001110000000000" => dout <= "000"; 
       when "1001110100000000" => dout <= "000"; 
       when "1000110100000110" => dout <= "100"; 
       when "1000110111000000" => dout <= "000"; 
       when "1000110100000000" => dout <= "000"; 
       when "1000110101000000" => dout <= "011"; 
       when "1000110110000000" => dout <= "100"; 
       when "1100010100000110" => dout <= "100"; 
       when "1100010100000000" => dout <= "000"; 
       when "1100010101000000" => dout <= "011"; 
       when "1100010110000000" => dout <= "100"; 
       when "1100010000000110" => dout <= "100"; 
       when "1100010000000000" => dout <= "000"; 
       when "1100010001000000" => dout <= "011"; 
       when "1100010010000000" => dout <= "100"; 
       when "0000000011000000" => dout <= "000"; 
       when "0000000000000110" => dout <= "100"; 
       when "0000000000000000" => dout <= "000"; 
       when "0000000001000000" => dout <= "011"; 
       when "0000000010000000" => dout <= "100"; 
       when "0000000111000000" => dout <= "000"; 
       when "0000000100000110" => dout <= "100"; 
       when "0000000100000000" => dout <= "000"; 
       when "0000000101000000" => dout <= "011"; 
       when "0000000110000000" => dout <= "100"; 
       when "0000001011000000" => dout <= "000"; 
       when "0000001000000110" => dout <= "100"; 
       when "0000001000000000" => dout <= "000"; 
       when "0000001001000000" => dout <= "011"; 
       when "0000001010000000" => dout <= "100"; 
       when "0000001111000000" => dout <= "000"; 
       when "0000001100000110" => dout <= "100"; 
       when "0000001100000000" => dout <= "000"; 
       when "0000001101000000" => dout <= "011"; 
       when "0000001110000000" => dout <= "100"; 
       when "1000000011000000" => dout <= "000"; 
       when "1000000000000110" => dout <= "100"; 
       when "1000000000000000" => dout <= "000"; 
       when "1000000001000000" => dout <= "011"; 
       when "1000000010000000" => dout <= "100"; 
       when "1000000111000000" => dout <= "000"; 
       when "1000000100000110" => dout <= "100"; 
       when "1000000100000000" => dout <= "000"; 
       when "1000000101000000" => dout <= "011"; 
       when "1000000110000000" => dout <= "100"; 
       when "1000001111000000" => dout <= "000"; 
       when "1000001100000110" => dout <= "100"; 
       when "1000001100000000" => dout <= "000"; 
       when "1000001101000000" => dout <= "011"; 
       when "1000001110000000" => dout <= "100"; 
       when "0000010000000000" => dout <= "000"; 
       when "0000010100000000" => dout <= "000"; 
       when "0001000011000000" => dout <= "000"; 
       when "0001000000000110" => dout <= "100"; 
       when "0001000000000000" => dout <= "000"; 
       when "0001000001000000" => dout <= "011"; 
       when "0001000010000000" => dout <= "100"; 
       when "0001000111000000" => dout <= "000"; 
       when "0001000100000110" => dout <= "100"; 
       when "0001000100000000" => dout <= "000"; 
       when "0001000101000000" => dout <= "011"; 
       when "0001000110000000" => dout <= "100"; 
       when "0001001011000000" => dout <= "000"; 
       when "0001001000000110" => dout <= "100"; 
       when "0001001000000000" => dout <= "000"; 
       when "0001001001000000" => dout <= "011"; 
       when "0001001010000000" => dout <= "100"; 
       when "0001001111000000" => dout <= "000"; 
       when "0001001100000110" => dout <= "100"; 
       when "0001001100000000" => dout <= "000"; 
       when "0001001101000000" => dout <= "011"; 
       when "0001001110000000" => dout <= "100"; 
       when "1000000011010000" => dout <= "000"; 
       when "1000000000010110" => dout <= "100"; 
       when "1000000000010000" => dout <= "000"; 
       when "1000000001010000" => dout <= "011"; 
       when "1000000010010000" => dout <= "100"; 
       when "1000000111010000" => dout <= "000"; 
       when "1000000100010110" => dout <= "100"; 
       when "1000000100010000" => dout <= "000"; 
       when "1000000101010000" => dout <= "011"; 
       when "1000000110010000" => dout <= "100"; 
       when "1000001111010000" => dout <= "000"; 
       when "1000001100010110" => dout <= "100"; 
       when "1000001100010000" => dout <= "000"; 
       when "1000001101010000" => dout <= "011"; 
       when "1000001110010000" => dout <= "100"; 
       when "0001010000000000" => dout <= "000"; 
       when "0001010100000000" => dout <= "000"; 
       when "0010100011000000" => dout <= "000"; 
       when "0010100000000110" => dout <= "100"; 
       when "0010100000000000" => dout <= "000"; 
       when "0010100001000000" => dout <= "011"; 
       when "0010100010000000" => dout <= "100"; 
       when "0010100111000000" => dout <= "000"; 
       when "0010100100000110" => dout <= "100"; 
       when "0010100100000000" => dout <= "000"; 
       when "0010100101000000" => dout <= "011"; 
       when "0010100110000000" => dout <= "100"; 
       when "0010101011000000" => dout <= "000"; 
       when "0010101000000110" => dout <= "100"; 
       when "0010101000000000" => dout <= "000"; 
       when "0010101001000000" => dout <= "011"; 
       when "0010101010000000" => dout <= "100"; 
       when "0010101111000000" => dout <= "000"; 
       when "0010101100000110" => dout <= "100"; 
       when "0010101100000000" => dout <= "000"; 
       when "0010101101000000" => dout <= "011"; 
       when "0010101110000000" => dout <= "100"; 
       when "1000000011101000" => dout <= "000"; 
       when "1000000000101110" => dout <= "100"; 
       when "1000000000101000" => dout <= "000"; 
       when "1000000001101000" => dout <= "011"; 
       when "1000000010101000" => dout <= "100"; 
       when "1000000111101000" => dout <= "000"; 
       when "1000000100101110" => dout <= "100"; 
       when "1000000100101000" => dout <= "000"; 
       when "1000000101101000" => dout <= "011"; 
       when "1000000110101000" => dout <= "100"; 
       when "1000001111101000" => dout <= "000"; 
       when "1000001100101110" => dout <= "100"; 
       when "1000001100101000" => dout <= "000"; 
       when "1000001101101000" => dout <= "011"; 
       when "1000001110101000" => dout <= "100"; 
       when "0010110000000000" => dout <= "000"; 
       when "0010110100000000" => dout <= "000"; 
       when "0001100011000000" => dout <= "000"; 
       when "0001100000000110" => dout <= "100"; 
       when "0001100000000000" => dout <= "000"; 
       when "0001100001000000" => dout <= "011"; 
       when "0001100010000000" => dout <= "100"; 
       when "0001100111000000" => dout <= "000"; 
       when "0001100100000110" => dout <= "100"; 
       when "0001100100000000" => dout <= "000"; 
       when "0001100101000000" => dout <= "011"; 
       when "0001100110000000" => dout <= "100"; 
       when "0001101011000000" => dout <= "000"; 
       when "0001101000000110" => dout <= "100"; 
       when "0001101000000000" => dout <= "000"; 
       when "0001101001000000" => dout <= "011"; 
       when "0001101010000000" => dout <= "100"; 
       when "0001101111000000" => dout <= "000"; 
       when "0001101100000110" => dout <= "100"; 
       when "0001101100000000" => dout <= "000"; 
       when "0001101101000000" => dout <= "011"; 
       when "0001101110000000" => dout <= "100"; 
       when "1000000011011000" => dout <= "000"; 
       when "1000000000011110" => dout <= "100"; 
       when "1000000000011000" => dout <= "000"; 
       when "1000000001011000" => dout <= "011"; 
       when "1000000010011000" => dout <= "100"; 
       when "1000000111011000" => dout <= "000"; 
       when "1000000100011110" => dout <= "100"; 
       when "1000000100011000" => dout <= "000"; 
       when "1000000101011000" => dout <= "011"; 
       when "1000000110011000" => dout <= "100"; 
       when "1000001111011000" => dout <= "000"; 
       when "1000001100011110" => dout <= "100"; 
       when "1000001100011000" => dout <= "000"; 
       when "1000001101011000" => dout <= "011"; 
       when "1000001110011000" => dout <= "100"; 
       when "0001110000000000" => dout <= "000"; 
       when "0001110100000000" => dout <= "000"; 
       when "1111111011000000" => dout <= "000"; 
       when "1111111000000110" => dout <= "100"; 
       when "1111111000000000" => dout <= "000"; 
       when "1111111001000000" => dout <= "011"; 
       when "1111111010000000" => dout <= "100"; 
       when "1111111100000110" => dout <= "100"; 
       when "1111111100000000" => dout <= "000"; 
       when "1111111101000000" => dout <= "011"; 
       when "1111111110000000" => dout <= "100"; 
       when "0100000000000000" => dout <= "000"; 
       when "0100000100000000" => dout <= "000"; 
       when "0100001000000000" => dout <= "000"; 
       when "0100001100000000" => dout <= "000"; 
       when "0100010000000000" => dout <= "000"; 
       when "0100010100000000" => dout <= "000"; 
       when "0100011000000000" => dout <= "000"; 
       when "0100011100000000" => dout <= "000"; 
       when "1111111011001000" => dout <= "000"; 
       when "1111111000001110" => dout <= "100"; 
       when "1111111000001000" => dout <= "000"; 
       when "1111111001001000" => dout <= "011"; 
       when "1111111010001000" => dout <= "100"; 
       when "1111111100001110" => dout <= "100"; 
       when "1111111100001000" => dout <= "000"; 
       when "1111111101001000" => dout <= "011"; 
       when "1111111110001000" => dout <= "100"; 
       when "0100100000000000" => dout <= "000"; 
       when "0100100100000000" => dout <= "000"; 
       when "0100101000000000" => dout <= "000"; 
       when "0100101100000000" => dout <= "000"; 
       when "0100110000000000" => dout <= "000"; 
       when "0100110100000000" => dout <= "000"; 
       when "0100111000000000" => dout <= "000"; 
       when "0100111100000000" => dout <= "000"; 
       when "0011101011000000" => dout <= "000"; 
       when "0011101000000110" => dout <= "100"; 
       when "0011101000000000" => dout <= "000"; 
       when "0011101001000000" => dout <= "011"; 
       when "0011101010000000" => dout <= "100"; 
       when "0011101111000000" => dout <= "000"; 
       when "0011101100000110" => dout <= "100"; 
       when "0011101100000000" => dout <= "000"; 
       when "0011101101000000" => dout <= "011"; 
       when "0011101110000000" => dout <= "100"; 
       when "0011100000000110" => dout <= "100"; 
       when "0011100000000000" => dout <= "000"; 
       when "0011100001000000" => dout <= "011"; 
       when "0011100010000000" => dout <= "100"; 
       when "0011100011000000" => dout <= "000"; 
       when "0011100100000110" => dout <= "100"; 
       when "0011100100000000" => dout <= "000"; 
       when "0011100101000000" => dout <= "011"; 
       when "0011100110000000" => dout <= "100"; 
       when "0011100111000000" => dout <= "000"; 
       when "1000000011111000" => dout <= "000"; 
       when "1000000000111110" => dout <= "100"; 
       when "1000000000111000" => dout <= "000"; 
       when "1000000001111000" => dout <= "011"; 
       when "1000000010111000" => dout <= "100"; 
       when "1000000111111000" => dout <= "000"; 
       when "1000000100111110" => dout <= "100"; 
       when "1000000100111000" => dout <= "000"; 
       when "1000000101111000" => dout <= "011"; 
       when "1000000110111000" => dout <= "100"; 
       when "1000001111111000" => dout <= "000"; 
       when "1000001100111110" => dout <= "100"; 
       when "1000001100111000" => dout <= "000"; 
       when "1000001101111000" => dout <= "011"; 
       when "1000001110111000" => dout <= "100"; 
       when "0011110000000000" => dout <= "000"; 
       when "0011110100000000" => dout <= "000"; 
       when "1111011011011000" => dout <= "000"; 
       when "1111011000011110" => dout <= "100"; 
       when "1111011000011000" => dout <= "000"; 
       when "1111011001011000" => dout <= "011"; 
       when "1111011010011000" => dout <= "100"; 
       when "1111011111011000" => dout <= "000"; 
       when "1111011100011110" => dout <= "100"; 
       when "1111011100011000" => dout <= "000"; 
       when "1111011101011000" => dout <= "011"; 
       when "1111011110011000" => dout <= "100"; 
       when "0011011100000000" => dout <= "001"; 
       when "0010011100000000" => dout <= "001"; 
       when "0011111100000000" => dout <= "001"; 
       when "0010111100000000" => dout <= "001"; 
       when "1111011011100000" => dout <= "000"; 
       when "1111011000100110" => dout <= "100"; 
       when "1111011000100000" => dout <= "000"; 
       when "1111011001100000" => dout <= "011"; 
       when "1111011010100000" => dout <= "100"; 
       when "1111011111100000" => dout <= "000"; 
       when "1111011100100110" => dout <= "100"; 
       when "1111011100100000" => dout <= "000"; 
       when "1111011101100000" => dout <= "011"; 
       when "1111011110100000" => dout <= "100"; 
       when "1111011011101000" => dout <= "000"; 
       when "1111011000101110" => dout <= "100"; 
       when "1111011000101000" => dout <= "000"; 
       when "1111011001101000" => dout <= "011"; 
       when "1111011010101000" => dout <= "100"; 
       when "1111011111101000" => dout <= "000"; 
       when "1111011100101110" => dout <= "100"; 
       when "1111011100101000" => dout <= "000"; 
       when "1111011101101000" => dout <= "011"; 
       when "1111011110101000" => dout <= "100"; 
       when "1111011011110000" => dout <= "000"; 
       when "1111011000110110" => dout <= "100"; 
       when "1111011000110000" => dout <= "000"; 
       when "1111011001110000" => dout <= "011"; 
       when "1111011010110000" => dout <= "100"; 
       when "1111011111110000" => dout <= "000"; 
       when "1111011100110110" => dout <= "100"; 
       when "1111011100110000" => dout <= "000"; 
       when "1111011101110000" => dout <= "011"; 
       when "1111011110110000" => dout <= "100"; 
       when "1111011011111000" => dout <= "000"; 
       when "1111011000111110" => dout <= "100"; 
       when "1111011000111000" => dout <= "000"; 
       when "1111011001111000" => dout <= "011"; 
       when "1111011010111000" => dout <= "100"; 
       when "1111011111111000" => dout <= "000"; 
       when "1111011100111110" => dout <= "100"; 
       when "1111011100111000" => dout <= "000"; 
       when "1111011101111000" => dout <= "011"; 
       when "1111011110111000" => dout <= "100"; 
       when "1101010000000000" => dout <= "000"; 
       when "1101010100000000" => dout <= "000"; 
       when "1001100000000000" => dout <= "000"; 
       when "1001100100000000" => dout <= "000"; 
       when "1101000011000000" => dout <= "000"; 
       when "1101000000000110" => dout <= "100"; 
       when "1101000000000000" => dout <= "000"; 
       when "1101000001000000" => dout <= "011"; 
       when "1101000010000000" => dout <= "100"; 
       when "1101000111000000" => dout <= "000"; 
       when "1101000100000110" => dout <= "100"; 
       when "1101000100000000" => dout <= "000"; 
       when "1101000101000000" => dout <= "011"; 
       when "1101000110000000" => dout <= "100"; 
       when "1101001011000000" => dout <= "000"; 
       when "1101001000000110" => dout <= "100"; 
       when "1101001000000000" => dout <= "000"; 
       when "1101001001000000" => dout <= "011"; 
       when "1101001010000000" => dout <= "100"; 
       when "1101001111000000" => dout <= "000"; 
       when "1101001100000110" => dout <= "100"; 
       when "1101001100000000" => dout <= "000"; 
       when "1101001101000000" => dout <= "011"; 
       when "1101001110000000" => dout <= "100"; 
       when "0010000011000000" => dout <= "000"; 
       when "0010000000000110" => dout <= "100"; 
       when "0010000000000000" => dout <= "000"; 
       when "0010000001000000" => dout <= "011"; 
       when "0010000010000000" => dout <= "100"; 
       when "0010000111000000" => dout <= "000"; 
       when "0010000100000110" => dout <= "100"; 
       when "0010000100000000" => dout <= "000"; 
       when "0010000101000000" => dout <= "011"; 
       when "0010000110000000" => dout <= "100"; 
       when "0010001011000000" => dout <= "000"; 
       when "0010001000000110" => dout <= "100"; 
       when "0010001000000000" => dout <= "000"; 
       when "0010001001000000" => dout <= "011"; 
       when "0010001010000000" => dout <= "100"; 
       when "0010001111000000" => dout <= "000"; 
       when "0010001100000110" => dout <= "100"; 
       when "0010001100000000" => dout <= "000"; 
       when "0010001101000000" => dout <= "011"; 
       when "0010001110000000" => dout <= "100"; 
       when "1000000011100000" => dout <= "000"; 
       when "1000000000100110" => dout <= "100"; 
       when "1000000000100000" => dout <= "000"; 
       when "1000000001100000" => dout <= "011"; 
       when "1000000010100000" => dout <= "100"; 
       when "1000000111100000" => dout <= "000"; 
       when "1000000100100110" => dout <= "100"; 
       when "1000000100100000" => dout <= "000"; 
       when "1000000101100000" => dout <= "011"; 
       when "1000000110100000" => dout <= "100"; 
       when "1000001111100000" => dout <= "000"; 
       when "1000001100100110" => dout <= "100"; 
       when "1000001100100000" => dout <= "000"; 
       when "1000001101100000" => dout <= "011"; 
       when "1000001110100000" => dout <= "100"; 
       when "0010010000000000" => dout <= "000"; 
       when "0010010100000000" => dout <= "000"; 
       when "0000100000000110" => dout <= "100"; 
       when "0000100000000000" => dout <= "000"; 
       when "0000100001000000" => dout <= "011"; 
       when "0000100010000000" => dout <= "100"; 
       when "0000100011000000" => dout <= "000"; 
       when "0000100100000110" => dout <= "100"; 
       when "0000100100000000" => dout <= "000"; 
       when "0000100101000000" => dout <= "011"; 
       when "0000100110000000" => dout <= "100"; 
       when "0000100111000000" => dout <= "000"; 
       when "0000101011000000" => dout <= "000"; 
       when "0000101000000110" => dout <= "100"; 
       when "0000101000000000" => dout <= "000"; 
       when "0000101001000000" => dout <= "011"; 
       when "0000101010000000" => dout <= "100"; 
       when "0000101111000000" => dout <= "000"; 
       when "0000101100000110" => dout <= "100"; 
       when "0000101100000000" => dout <= "000"; 
       when "0000101101000000" => dout <= "011"; 
       when "0000101110000000" => dout <= "100"; 
       when "1000000011001000" => dout <= "000"; 
       when "1000000000001110" => dout <= "100"; 
       when "1000000000001000" => dout <= "000"; 
       when "1000000001001000" => dout <= "011"; 
       when "1000000010001000" => dout <= "100"; 
       when "1000000111001000" => dout <= "000"; 
       when "1000000100001110" => dout <= "100"; 
       when "1000000100001000" => dout <= "000"; 
       when "1000000101001000" => dout <= "011"; 
       when "1000000110001000" => dout <= "100"; 
       when "1000001111001000" => dout <= "000"; 
       when "1000001100001110" => dout <= "100"; 
       when "1000001100001000" => dout <= "000"; 
       when "1000001101001000" => dout <= "011"; 
       when "1000001110001000" => dout <= "100"; 
       when "0000110000000000" => dout <= "000"; 
       when "0000110100000000" => dout <= "000"; 
       when "1000010000000110" => dout <= "100"; 
       when "1000010000000000" => dout <= "000"; 
       when "1000010001000000" => dout <= "011"; 
       when "1000010010000000" => dout <= "100"; 
       when "1000010100000110" => dout <= "100"; 
       when "1000010100000000" => dout <= "000"; 
       when "1000010101000000" => dout <= "011"; 
       when "1000010110000000" => dout <= "100"; 
       when "1000010011000000" => dout <= "000"; 
       when "1000010111000000" => dout <= "000"; 
       when "1111011011000000" => dout <= "000"; 
       when "1111011000000110" => dout <= "100"; 
       when "1111011000000000" => dout <= "000"; 
       when "1111011001000000" => dout <= "011"; 
       when "1111011010000000" => dout <= "100"; 
       when "1111011111000000" => dout <= "000"; 
       when "1111011100000110" => dout <= "100"; 
       when "1111011100000000" => dout <= "000"; 
       when "1111011101000000" => dout <= "011"; 
       when "1111011110000000" => dout <= "100"; 
       when "1010100000000000" => dout <= "000"; 
       when "1010100100000000" => dout <= "000"; 
       when "0011000000000110" => dout <= "100"; 
       when "0011000000000000" => dout <= "000"; 
       when "0011000001000000" => dout <= "011"; 
       when "0011000010000000" => dout <= "100"; 
       when "0011000011000000" => dout <= "000"; 
       when "0011000100000110" => dout <= "100"; 
       when "0011000100000000" => dout <= "000"; 
       when "0011000101000000" => dout <= "011"; 
       when "0011000110000000" => dout <= "100"; 
       when "0011000111000000" => dout <= "000"; 
       when "0011001011000000" => dout <= "000"; 
       when "0011001000000110" => dout <= "100"; 
       when "0011001000000000" => dout <= "000"; 
       when "0011001001000000" => dout <= "011"; 
       when "0011001010000000" => dout <= "100"; 
       when "0011001111000000" => dout <= "000"; 
       when "0011001100000110" => dout <= "100"; 
       when "0011001100000000" => dout <= "000"; 
       when "0011001101000000" => dout <= "011"; 
       when "0011001110000000" => dout <= "100"; 
       when "1000000011110000" => dout <= "000"; 
       when "1000000000110110" => dout <= "100"; 
       when "1000000000110000" => dout <= "000"; 
       when "1000000001110000" => dout <= "011"; 
       when "1000000010110000" => dout <= "100"; 
       when "1000000111110000" => dout <= "000"; 
       when "1000000100110110" => dout <= "100"; 
       when "1000000100110000" => dout <= "000"; 
       when "1000000101110000" => dout <= "011"; 
       when "1000000110110000" => dout <= "100"; 
       when "1000001111110000" => dout <= "000"; 
       when "1000001100110110" => dout <= "100"; 
       when "1000001100110000" => dout <= "000"; 
       when "1000001101110000" => dout <= "011"; 
       when "1000001110110000" => dout <= "100"; 
       when "0011010000000000" => dout <= "000"; 
       when "0011010100000000" => dout <= "000"; 
       when "1111011011010000" => dout <= "000"; 
       when "1111011000010110" => dout <= "100"; 
       when "1111011000010000" => dout <= "000"; 
       when "1111011001010000" => dout <= "011"; 
       when "1111011010010000" => dout <= "100"; 
       when "1111011111010000" => dout <= "000"; 
       when "1111011100010110" => dout <= "100"; 
       when "1111011100010000" => dout <= "000"; 
       when "1111011101010000" => dout <= "011"; 
       when "1111011110010000" => dout <= "100"; 
       when "1010010000000000" => dout <= "000"; 
       when "1010010100000000" => dout <= "000"; 
       when "1010011000000000" => dout <= "000"; 
       when "1010011100000000" => dout <= "000"; 
       when "1010111000000000" => dout <= "000"; 
       when "1010111100000000" => dout <= "000"; 
       when "1010110000000000" => dout <= "000"; 
       when "1010110100000000" => dout <= "000"; 
       when "1010101000000000" => dout <= "000"; 
       when "1010101100000000" => dout <= "000"; 
       when "1111001000000000" => dout <= "000"; 
       when "1111001100000000" => dout <= "000"; 
       when "0110000000000000" => dout <= "000";         
       when "0110000100000000" => dout <= "000";         
       when "1100100000000000" => dout <= "000";         
       when "1100100100000000" => dout <= "000";         
       when "0110001000000000" => dout <= "000";         
       when "0110110000000000" => dout <= "000";         
       when "0110110100000000" => dout <= "000";         
       when "0110111000000000" => dout <= "000";         
       when "0110111100000000" => dout <= "000";         
       when "0000111100000000" => dout <= "000";                     
       when "0110001100000000" => dout <= "000";             
       when "0110010000000000" => dout <= "000";             
       when "0110010100000000" => dout <= "000";             
       when "0110011000000000" => dout <= "000";             
       when "0110011100000000" => dout <= "000";             
       when "1000001000000000" => dout <= "000";             
       when "1101011000000000" => dout <= "000";             
       when "1111000100000000" => dout <= "000";             
       when "1100000000000000" => dout <= "000";                 
       when "1100000100000000" => dout <= "000";                 
       when others             => dout <= "---";
    end case;
  end process;
end rtl;