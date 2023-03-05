-- VHDL Entity r65c02_tc.reg_pc.symbol
--
-- Created:
--          by - eda.UNKNOWN (ENTW-7HPZ200)
--          at - 11:59:59 06.09.2018
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2016.2 (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity reg_pc is
   port( 
      adr_i        : in     std_logic_vector (15 downto 0);
      clk_clk_i    : in     std_logic;
      ld_i         : in     std_logic_vector (1 downto 0);
      ld_pc_i      : in     std_logic;
      offset_i     : in     std_logic_vector (15 downto 0);
      rst_rst_n_i  : in     std_logic;
      sel_pc_in_i  : in     std_logic;
      sel_pc_val_i : in     std_logic_vector (1 downto 0);
      ce           : in     std_logic;
      adr_nxt_pc_o : out    std_logic_vector (15 downto 0);
      adr_pc_o     : out    std_logic_vector (15 downto 0)
   );

-- Declarations

end reg_pc ;

-- (C) 2008 - 2018 Jens Gutschmidt
-- (email: opencores@vivare-services.com)
-- 
-- Versions:
-- Revision 1.7  2013/07/21 11:11:00  jens
-- - Changing the title block and internal revision history
-- 
-- Revision 1.6  2009/01/04 10:20:47  eda
-- Changes for cosmetic issues only
-- 
-- Revision 1.5  2009/01/04 09:23:10  eda
-- - Delete unused nets and blocks (same as R6502_TC)
-- - Rename blocks
-- 
-- Revision 1.4  2009/01/03 16:53:02  eda
-- - Unused nets and blocks deleted
-- - Renamed blocks
-- 
-- Revision 1.3  2009/01/03 16:42:02  eda
-- - Unused nets and blocks deleted
-- - Renamed blocks
-- 
-- Revision 1.2  2008/12/31 19:31:24  eda
-- Production Release
--  
-- 
--
-- VHDL Architecture r65c02_tc.reg_pc.struct
--
-- Created:
--          by - eda.UNKNOWN (ENTW-7HPZ200)
--          at - 11:59:59 06.09.2018
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2016.2 (Build 5)
--
-- COPYRIGHT (C) 2008 - 2018 by Jens Gutschmidt
-- 
-- This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or any later version.
-- 
-- This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
-- 
-- You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
-- 
-- 
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


architecture struct of reg_pc is

   -- Architecture declarations

   -- Internal signal declarations
   signal adr_pc_high_o_i : std_logic_vector(7 downto 0);
   signal adr_pc_low_o_i  : std_logic_vector(7 downto 0);
   signal adr_pc_o_i      : std_logic_vector(15 downto 0);
   signal ci_o_i          : std_logic;
   signal cout_pc_o_i     : std_logic;
   signal load3_o_i       : std_logic;
   signal load_o_i        : std_logic;
   signal offset_high_o_i : std_logic_vector(7 downto 0);
   signal offset_low_o_i  : std_logic_vector(7 downto 0);
   signal val_o_i         : std_logic_vector(7 downto 0);
   signal val_one         : std_logic_vector(7 downto 0);
   signal val_zero        : std_logic_vector(7 downto 0);

   -- Implicit buffer signal declarations
   signal adr_nxt_pc_o_internal : std_logic_vector (15 downto 0);
   signal adr_pc_o_internal     : std_logic_vector (15 downto 0);


   -- ModuleWare signal declarations(v1.12) for instance 'U_0' of 'adff'
   signal mw_U_0reg_cval : std_logic_vector(7 downto 0);

   -- ModuleWare signal declarations(v1.12) for instance 'U_4' of 'adff'
   signal mw_U_4reg_cval : std_logic_vector(7 downto 0);

   -- ModuleWare signal declarations(v1.12) for instance 'U_3' of 'split'
   signal mw_U_3temp_din : std_logic_vector(15 downto 0);

   -- ModuleWare signal declarations(v1.12) for instance 'U_5' of 'split'
   signal mw_U_5temp_din : std_logic_vector(15 downto 0);


begin

   -- ModuleWare code(v1.12) for instance 'U_2' of 'add'
   u_2combo_proc: process (adr_pc_low_o_i, val_o_i)
   variable temp_din0 : std_logic_vector(8 downto 0);
   variable temp_din1 : std_logic_vector(8 downto 0);
   variable temp_sum : unsigned(8 downto 0);
   variable temp_carry : std_logic;
   begin
      temp_din0 := '0' & adr_pc_low_o_i;
      temp_din1 := '0' & val_o_i;
      temp_carry := '0';
      temp_sum := unsigned(temp_din0) + unsigned(temp_din1) + temp_carry;
      adr_nxt_pc_o_internal(7 DOWNTO 0) <= conv_std_logic_vector(temp_sum(7 downto 0),8);
      cout_pc_o_i <= temp_sum(8) ;
   end process u_2combo_proc;

   -- ModuleWare code(v1.12) for instance 'U_11' of 'add'
   u_11combo_proc: process (adr_pc_high_o_i, offset_high_o_i, ci_o_i)
   variable temp_din0 : std_logic_vector(8 downto 0);
   variable temp_din1 : std_logic_vector(8 downto 0);
   variable temp_sum : unsigned(8 downto 0);
   variable temp_carry : std_logic;
   begin
      temp_din0 := '0' & adr_pc_high_o_i;
      temp_din1 := '0' & offset_high_o_i;
      temp_carry := ci_o_i;
      temp_sum := unsigned(temp_din0) + unsigned(temp_din1) + temp_carry;
      adr_nxt_pc_o_internal(15 DOWNTO 8) <= conv_std_logic_vector(temp_sum(7 downto 0),8);
   end process u_11combo_proc;

   -- ModuleWare code(v1.12) for instance 'U_0' of 'adff'
   adr_pc_o_internal(7 DOWNTO 0) <= mw_U_0reg_cval;
   u_0seq_proc: process (clk_clk_i, ce, rst_rst_n_i)
   begin
      if (rst_rst_n_i = '0') then
         mw_U_0reg_cval <= "00000000";
      elsif (clk_clk_i'event and clk_clk_i='1' and ce = '1') then
         if (load_o_i = '1') then
            mw_U_0reg_cval <= adr_nxt_pc_o_internal(7 DOWNTO 0);
         end if;
      end if;
   end process u_0seq_proc;

   -- ModuleWare code(v1.12) for instance 'U_4' of 'adff'
   adr_pc_o_internal(15 DOWNTO 8) <= mw_U_4reg_cval;
   u_4seq_proc: process (clk_clk_i, ce, rst_rst_n_i)
   begin
      if (rst_rst_n_i = '0') then
         mw_U_4reg_cval <= "00000000";
      elsif (clk_clk_i'event and clk_clk_i='1' and ce = '1') then
         if (load3_o_i = '1') then
            mw_U_4reg_cval <= adr_nxt_pc_o_internal(15 DOWNTO 8);
         end if;
      end if;
   end process u_4seq_proc;

   -- ModuleWare code(v1.12) for instance 'U_6' of 'and'
   load_o_i <= ld_pc_i and ld_i(0);

   -- ModuleWare code(v1.12) for instance 'U_7' of 'and'
   load3_o_i <= ld_pc_i and ld_i(1);

   -- ModuleWare code(v1.12) for instance 'U_10' of 'and'
   ci_o_i <= cout_pc_o_i and ld_pc_i;

   -- ModuleWare code(v1.12) for instance 'U_1' of 'constval'
   val_zero <= "00000000";

   -- ModuleWare code(v1.12) for instance 'U_9' of 'constval'
   val_one <= "00000001";

   -- ModuleWare code(v1.12) for instance 'U_8' of 'mux'
   u_8combo_proc: process(adr_pc_o_internal, adr_i, sel_pc_in_i)
   begin
      case sel_pc_in_i is
      when '0' => adr_pc_o_i <= adr_pc_o_internal;
      when '1' => adr_pc_o_i <= adr_i;
      when others => adr_pc_o_i <= (others => 'X');
      end case;
   end process u_8combo_proc;

   -- ModuleWare code(v1.12) for instance 'U_13' of 'mux'
   u_13combo_proc: process(val_one, val_zero, offset_low_o_i, 
                           sel_pc_val_i)
   begin
      case sel_pc_val_i is
      when "00" => val_o_i <= val_one;
      when "01" => val_o_i <= val_zero;
      when "10" => val_o_i <= offset_low_o_i;
      when "11" => val_o_i <= val_zero;
      when others => val_o_i <= (others => 'X');
      end case;
   end process u_13combo_proc;

   -- ModuleWare code(v1.12) for instance 'U_3' of 'split'
   mw_U_3temp_din <= adr_pc_o_i;
   u_3combo_proc: process (mw_U_3temp_din)
   variable temp_din: std_logic_vector(15 downto 0);
   begin
      temp_din := mw_U_3temp_din(15 downto 0);
      adr_pc_low_o_i <= temp_din(7 downto 0);
      adr_pc_high_o_i <= temp_din(15 downto 8);
   end process u_3combo_proc;

   -- ModuleWare code(v1.12) for instance 'U_5' of 'split'
   mw_U_5temp_din <= offset_i;
   u_5combo_proc: process (mw_U_5temp_din)
   variable temp_din: std_logic_vector(15 downto 0);
   begin
      temp_din := mw_U_5temp_din(15 downto 0);
      offset_low_o_i <= temp_din(7 downto 0);
      offset_high_o_i <= temp_din(15 downto 8);
   end process u_5combo_proc;

   -- Instance port mappings.

   -- Implicit buffered output assignments
   adr_nxt_pc_o <= adr_nxt_pc_o_internal;
   adr_pc_o     <= adr_pc_o_internal;

end struct;
