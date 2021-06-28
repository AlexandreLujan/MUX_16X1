PACKAGE MyPackage IS
	CONSTANT CONSTANTE_GLOBAL : INTEGER;
	TYPE STATE IS (RESET,IDLE,ACKA);
	
	COMPONENT MUX_4X1
		PORT(         
				SEL  : 	in  BIT_VECTOR(1 downto 0);
				IN_A : 	in  BIT_VECTOR(3 downto 0);
				Q    :	out BIT
			 );
	END COMPONENT;
	
	COMPONENT MUX_16X1
		PORT(         
				S  : 	in  BIT_VECTOR(3 downto 0);
				A 	: 	in  BIT_VECTOR(15 downto 0);
				X  :	out BIT
			 );
	END COMPONENT;
	
END MyPackage;

PACKAGE BODY MyPackage IS
	CONSTANT CONSTANTE_GLOBAL: INTEGER := 200;
END MyPackage;