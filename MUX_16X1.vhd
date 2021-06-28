LIBRARY work;
USE work.MyPackage.all;

entity MUX_16X1 is
    port ( 
			S  : 	in  BIT_VECTOR(3 downto 0);
         A 	: 	in  BIT_VECTOR(15 downto 0);
         X  :	out BIT
		  );
end MUX_16X1;

architecture RTL of MUX_16X1 is

	SIGNAL ENTRADA : BIT_VECTOR(3 downto 0);
	
begin

	UN1_MUX_4X1 : MUX_4X1
	port map(
		SEL  => S(3 downto 2),
		IN_A => A(15 downto 12),
		Q    => ENTRADA(3)
	);
	
	UN2_MUX_4X1 : MUX_4X1
	port map(
		SEL  => S(3 downto 2),
		IN_A => A(11 downto 8),
		Q    => ENTRADA(2)
	);

	UN3_MUX_4X1 : MUX_4X1
	port map(
		SEL  => S(3 downto 2),
		IN_A => A(7 downto 4),
		Q    => ENTRADA(1)
	);

	UN4_MUX_4X1 : MUX_4X1
	port map(
		SEL  => S(3 downto 2),
		IN_A => A(3 downto 0),
		Q    => ENTRADA(0)
	);
	
	UN5_MUX_4X1 : MUX_4X1
	port map(
		SEL  => S(1 downto 0),
		IN_A => ENTRADA(3 downto 0),
		Q    => X
	);



end RTL;