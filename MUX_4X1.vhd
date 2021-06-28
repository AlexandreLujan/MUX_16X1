entity MUX_4X1 is
    port ( 
			SEL  : 	in  BIT_VECTOR(1 downto 0);
         IN_A : 	in  BIT_VECTOR(3 downto 0);
         Q    :	out BIT
		  );
end MUX_4X1;

architecture RTL of MUX_4X1 is
begin
   Q <= IN_A(0) WHEN SEL = "00" ELSE
		  IN_A(1) WHEN SEL = "01" ELSE
	     IN_A(2) WHEN SEL = "10" ELSE
	     IN_A(3) WHEN SEL = "11";
end RTL;