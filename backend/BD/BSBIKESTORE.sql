PGDMP             	            |         
   BIKE_STORE    15.6    15.6 ]    _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            b           1262    17104 
   BIKE_STORE    DATABASE        CREATE DATABASE "BIKE_STORE" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "BIKE_STORE";
                postgres    false            �            1259    17105 	   articulos    TABLE     |  CREATE TABLE public.articulos (
    nombre character(100),
    costo numeric(100,2),
    margen numeric(100,2),
    impuesto numeric(100,2),
    stock numeric(100,0),
    marca character(100),
    descripcion character(700),
    especificaciones character(1000),
    cantidad numeric(150,0),
    id_articulo integer NOT NULL,
    id_categoria integer NOT NULL,
    imagen text
);
    DROP TABLE public.articulos;
       public         heap    postgres    false            �            1259    17110    articulos_id_articulo_seq    SEQUENCE     �   CREATE SEQUENCE public.articulos_id_articulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.articulos_id_articulo_seq;
       public          postgres    false    214            c           0    0    articulos_id_articulo_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.articulos_id_articulo_seq OWNED BY public.articulos.id_articulo;
          public          postgres    false    215            �            1259    17111    articulos_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.articulos_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.articulos_id_categoria_seq;
       public          postgres    false    214            d           0    0    articulos_id_categoria_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.articulos_id_categoria_seq OWNED BY public.articulos.id_categoria;
          public          postgres    false    216            �            1259    17112 
   categorias    TABLE     f   CREATE TABLE public.categorias (
    descripcion character(200),
    id_categoria integer NOT NULL
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    17115    categorias_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.categorias_id_categoria_seq;
       public          postgres    false    217            e           0    0    categorias_id_categoria_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.categorias_id_categoria_seq OWNED BY public.categorias.id_categoria;
          public          postgres    false    218            �            1259    17116 	   contactos    TABLE     �   CREATE TABLE public.contactos (
    nombre character(100),
    email text,
    mensaje character(100),
    id_contacto integer NOT NULL,
    fecha_envio time without time zone DEFAULT now()
);
    DROP TABLE public.contactos;
       public         heap    postgres    false            �            1259    17122    contactos_id_contacto_seq    SEQUENCE     �   CREATE SEQUENCE public.contactos_id_contacto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.contactos_id_contacto_seq;
       public          postgres    false    219            f           0    0    contactos_id_contacto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.contactos_id_contacto_seq OWNED BY public.contactos.id_contacto;
          public          postgres    false    220            �            1259    17123    pago    TABLE     �   CREATE TABLE public.pago (
    id_pago integer NOT NULL,
    nombre character(50),
    direccion character(50),
    telefono numeric(15,0),
    monto numeric(100,4)
);
    DROP TABLE public.pago;
       public         heap    postgres    false            �            1259    17126    pago_id_pago_seq    SEQUENCE     �   CREATE SEQUENCE public.pago_id_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pago_id_pago_seq;
       public          postgres    false    221            g           0    0    pago_id_pago_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pago_id_pago_seq OWNED BY public.pago.id_pago;
          public          postgres    false    222            �            1259    17127    rol    TABLE     m   CREATE TABLE public.rol (
    descripcion character(100),
    estado boolean,
    id_rol integer NOT NULL
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    17130    rol_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.rol_id_rol_seq;
       public          postgres    false    223            h           0    0    rol_id_rol_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.rol_id_rol_seq OWNED BY public.rol.id_rol;
          public          postgres    false    224            �            1259    17131    telefono    TABLE     �   CREATE TABLE public.telefono (
    telefono numeric(20,0),
    id_telefono integer NOT NULL,
    id_usuario integer NOT NULL
);
    DROP TABLE public.telefono;
       public         heap    postgres    false            �            1259    17134    telefono_id_telefono_seq    SEQUENCE     �   CREATE SEQUENCE public.telefono_id_telefono_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.telefono_id_telefono_seq;
       public          postgres    false    225            i           0    0    telefono_id_telefono_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.telefono_id_telefono_seq OWNED BY public.telefono.id_telefono;
          public          postgres    false    226            �            1259    17135    telefono_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.telefono_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.telefono_id_usuario_seq;
       public          postgres    false    225            j           0    0    telefono_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.telefono_id_usuario_seq OWNED BY public.telefono.id_usuario;
          public          postgres    false    227            �            1259    17136    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character(50),
    correo character(50),
    "contraseña" character(50),
    id_rol integer
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    17139    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public          postgres    false    228            k           0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public          postgres    false    229            �            1259    17140    venta    TABLE     �   CREATE TABLE public.venta (
    fecha date,
    valor_total numeric(100,0),
    id_venta integer NOT NULL,
    id_cliente integer NOT NULL,
    id_usuario integer NOT NULL
);
    DROP TABLE public.venta;
       public         heap    postgres    false            �            1259    17143    venta_detalle    TABLE     �   CREATE TABLE public.venta_detalle (
    cantidad numeric(200,0),
    precio_u numeric(100,0),
    precio_total numeric(200,0),
    id_venta integer NOT NULL,
    id_articulos integer NOT NULL
);
 !   DROP TABLE public.venta_detalle;
       public         heap    postgres    false            �            1259    17146    venta_detalle_id_articulos_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_detalle_id_articulos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.venta_detalle_id_articulos_seq;
       public          postgres    false    231            l           0    0    venta_detalle_id_articulos_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.venta_detalle_id_articulos_seq OWNED BY public.venta_detalle.id_articulos;
          public          postgres    false    232            �            1259    17147    venta_detalle_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_detalle_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.venta_detalle_id_venta_seq;
       public          postgres    false    231            m           0    0    venta_detalle_id_venta_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.venta_detalle_id_venta_seq OWNED BY public.venta_detalle.id_venta;
          public          postgres    false    233            �            1259    17148    venta_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.venta_id_cliente_seq;
       public          postgres    false    230            n           0    0    venta_id_cliente_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.venta_id_cliente_seq OWNED BY public.venta.id_cliente;
          public          postgres    false    234            �            1259    17149    venta_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.venta_id_usuario_seq;
       public          postgres    false    230            o           0    0    venta_id_usuario_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.venta_id_usuario_seq OWNED BY public.venta.id_usuario;
          public          postgres    false    235            �            1259    17150    venta_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.venta_id_venta_seq;
       public          postgres    false    230            p           0    0    venta_id_venta_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.venta_id_venta_seq OWNED BY public.venta.id_venta;
          public          postgres    false    236            �           2604    17151    articulos id_articulo    DEFAULT     ~   ALTER TABLE ONLY public.articulos ALTER COLUMN id_articulo SET DEFAULT nextval('public.articulos_id_articulo_seq'::regclass);
 D   ALTER TABLE public.articulos ALTER COLUMN id_articulo DROP DEFAULT;
       public          postgres    false    215    214            �           2604    17152    articulos id_categoria    DEFAULT     �   ALTER TABLE ONLY public.articulos ALTER COLUMN id_categoria SET DEFAULT nextval('public.articulos_id_categoria_seq'::regclass);
 E   ALTER TABLE public.articulos ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    216    214            �           2604    17153    categorias id_categoria    DEFAULT     �   ALTER TABLE ONLY public.categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.categorias_id_categoria_seq'::regclass);
 F   ALTER TABLE public.categorias ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    218    217            �           2604    17154    contactos id_contacto    DEFAULT     ~   ALTER TABLE ONLY public.contactos ALTER COLUMN id_contacto SET DEFAULT nextval('public.contactos_id_contacto_seq'::regclass);
 D   ALTER TABLE public.contactos ALTER COLUMN id_contacto DROP DEFAULT;
       public          postgres    false    220    219            �           2604    17155    pago id_pago    DEFAULT     l   ALTER TABLE ONLY public.pago ALTER COLUMN id_pago SET DEFAULT nextval('public.pago_id_pago_seq'::regclass);
 ;   ALTER TABLE public.pago ALTER COLUMN id_pago DROP DEFAULT;
       public          postgres    false    222    221            �           2604    17156 
   rol id_rol    DEFAULT     h   ALTER TABLE ONLY public.rol ALTER COLUMN id_rol SET DEFAULT nextval('public.rol_id_rol_seq'::regclass);
 9   ALTER TABLE public.rol ALTER COLUMN id_rol DROP DEFAULT;
       public          postgres    false    224    223            �           2604    17157    telefono id_telefono    DEFAULT     |   ALTER TABLE ONLY public.telefono ALTER COLUMN id_telefono SET DEFAULT nextval('public.telefono_id_telefono_seq'::regclass);
 C   ALTER TABLE public.telefono ALTER COLUMN id_telefono DROP DEFAULT;
       public          postgres    false    226    225            �           2604    17158    telefono id_usuario    DEFAULT     z   ALTER TABLE ONLY public.telefono ALTER COLUMN id_usuario SET DEFAULT nextval('public.telefono_id_usuario_seq'::regclass);
 B   ALTER TABLE public.telefono ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    227    225            �           2604    17159    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    229    228            �           2604    17160    usuarios id_rol    DEFAULT     v   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_rol SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 >   ALTER TABLE public.usuarios ALTER COLUMN id_rol DROP DEFAULT;
       public          postgres    false    229    228            �           2604    17161    venta id_venta    DEFAULT     p   ALTER TABLE ONLY public.venta ALTER COLUMN id_venta SET DEFAULT nextval('public.venta_id_venta_seq'::regclass);
 =   ALTER TABLE public.venta ALTER COLUMN id_venta DROP DEFAULT;
       public          postgres    false    236    230            �           2604    17162    venta id_cliente    DEFAULT     t   ALTER TABLE ONLY public.venta ALTER COLUMN id_cliente SET DEFAULT nextval('public.venta_id_cliente_seq'::regclass);
 ?   ALTER TABLE public.venta ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    234    230            �           2604    17163    venta id_usuario    DEFAULT     t   ALTER TABLE ONLY public.venta ALTER COLUMN id_usuario SET DEFAULT nextval('public.venta_id_usuario_seq'::regclass);
 ?   ALTER TABLE public.venta ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    235    230            �           2604    17164    venta_detalle id_venta    DEFAULT     �   ALTER TABLE ONLY public.venta_detalle ALTER COLUMN id_venta SET DEFAULT nextval('public.venta_detalle_id_venta_seq'::regclass);
 E   ALTER TABLE public.venta_detalle ALTER COLUMN id_venta DROP DEFAULT;
       public          postgres    false    233    231            �           2604    17165    venta_detalle id_articulos    DEFAULT     �   ALTER TABLE ONLY public.venta_detalle ALTER COLUMN id_articulos SET DEFAULT nextval('public.venta_detalle_id_articulos_seq'::regclass);
 I   ALTER TABLE public.venta_detalle ALTER COLUMN id_articulos DROP DEFAULT;
       public          postgres    false    232    231            F          0    17105 	   articulos 
   TABLE DATA           �   COPY public.articulos (nombre, costo, margen, impuesto, stock, marca, descripcion, especificaciones, cantidad, id_articulo, id_categoria, imagen) FROM stdin;
    public          postgres    false    214   �j       I          0    17112 
   categorias 
   TABLE DATA           ?   COPY public.categorias (descripcion, id_categoria) FROM stdin;
    public          postgres    false    217   �       K          0    17116 	   contactos 
   TABLE DATA           U   COPY public.contactos (nombre, email, mensaje, id_contacto, fecha_envio) FROM stdin;
    public          postgres    false    219   ��       M          0    17123    pago 
   TABLE DATA           K   COPY public.pago (id_pago, nombre, direccion, telefono, monto) FROM stdin;
    public          postgres    false    221   (�       O          0    17127    rol 
   TABLE DATA           :   COPY public.rol (descripcion, estado, id_rol) FROM stdin;
    public          postgres    false    223   ��       Q          0    17131    telefono 
   TABLE DATA           E   COPY public.telefono (telefono, id_telefono, id_usuario) FROM stdin;
    public          postgres    false    225   ��       T          0    17136    usuarios 
   TABLE DATA           U   COPY public.usuarios (id_usuario, nombre, correo, "contraseña", id_rol) FROM stdin;
    public          postgres    false    228   ��       V          0    17140    venta 
   TABLE DATA           U   COPY public.venta (fecha, valor_total, id_venta, id_cliente, id_usuario) FROM stdin;
    public          postgres    false    230   �       W          0    17143    venta_detalle 
   TABLE DATA           a   COPY public.venta_detalle (cantidad, precio_u, precio_total, id_venta, id_articulos) FROM stdin;
    public          postgres    false    231   �       q           0    0    articulos_id_articulo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.articulos_id_articulo_seq', 2, true);
          public          postgres    false    215            r           0    0    articulos_id_categoria_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.articulos_id_categoria_seq', 1, false);
          public          postgres    false    216            s           0    0    categorias_id_categoria_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.categorias_id_categoria_seq', 1, false);
          public          postgres    false    218            t           0    0    contactos_id_contacto_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.contactos_id_contacto_seq', 3, true);
          public          postgres    false    220            u           0    0    pago_id_pago_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pago_id_pago_seq', 3, true);
          public          postgres    false    222            v           0    0    rol_id_rol_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.rol_id_rol_seq', 1, false);
          public          postgres    false    224            w           0    0    telefono_id_telefono_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.telefono_id_telefono_seq', 1, false);
          public          postgres    false    226            x           0    0    telefono_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.telefono_id_usuario_seq', 1, false);
          public          postgres    false    227            y           0    0    usuarios_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 1, false);
          public          postgres    false    229            z           0    0    venta_detalle_id_articulos_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.venta_detalle_id_articulos_seq', 1, false);
          public          postgres    false    232            {           0    0    venta_detalle_id_venta_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.venta_detalle_id_venta_seq', 1, false);
          public          postgres    false    233            |           0    0    venta_id_cliente_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.venta_id_cliente_seq', 1, false);
          public          postgres    false    234            }           0    0    venta_id_usuario_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.venta_id_usuario_seq', 1, false);
          public          postgres    false    235            ~           0    0    venta_id_venta_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.venta_id_venta_seq', 1, false);
          public          postgres    false    236            �           2606    17167    articulos articulos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_pkey PRIMARY KEY (id_articulo);
 B   ALTER TABLE ONLY public.articulos DROP CONSTRAINT articulos_pkey;
       public            postgres    false    214            �           2606    17169    categorias categorias_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categoria);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    217            �           2606    17171    contactos contactos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.contactos
    ADD CONSTRAINT contactos_pkey PRIMARY KEY (id_contacto);
 B   ALTER TABLE ONLY public.contactos DROP CONSTRAINT contactos_pkey;
       public            postgres    false    219            �           2606    17173    pago pago_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (id_pago);
 8   ALTER TABLE ONLY public.pago DROP CONSTRAINT pago_pkey;
       public            postgres    false    221            �           2606    17175    rol rol_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    223            �           2606    17177    telefono telefono_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.telefono
    ADD CONSTRAINT telefono_pkey PRIMARY KEY (id_telefono);
 @   ALTER TABLE ONLY public.telefono DROP CONSTRAINT telefono_pkey;
       public            postgres    false    225            �           2606    17179    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    228            �           2606    17181    venta venta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id_venta);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public            postgres    false    230            �           2606    17182 %   articulos articulos_id_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id_categoria) NOT VALID;
 O   ALTER TABLE ONLY public.articulos DROP CONSTRAINT articulos_id_categoria_fkey;
       public          postgres    false    217    214    3237            �           2606    17187 !   telefono telefono_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.telefono
    ADD CONSTRAINT telefono_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) NOT VALID;
 K   ALTER TABLE ONLY public.telefono DROP CONSTRAINT telefono_id_usuario_fkey;
       public          postgres    false    228    3247    225            �           2606    17192    usuarios usuarios_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.rol(id_rol) NOT VALID;
 G   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_rol_fkey;
       public          postgres    false    3243    228    223            �           2606    17197 -   venta_detalle venta_detalle_id_articulos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta_detalle
    ADD CONSTRAINT venta_detalle_id_articulos_fkey FOREIGN KEY (id_articulos) REFERENCES public.articulos(id_articulo) NOT VALID;
 W   ALTER TABLE ONLY public.venta_detalle DROP CONSTRAINT venta_detalle_id_articulos_fkey;
       public          postgres    false    214    231    3235            �           2606    17202 )   venta_detalle venta_detalle_id_venta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta_detalle
    ADD CONSTRAINT venta_detalle_id_venta_fkey FOREIGN KEY (id_venta) REFERENCES public.venta(id_venta) NOT VALID;
 S   ALTER TABLE ONLY public.venta_detalle DROP CONSTRAINT venta_detalle_id_venta_fkey;
       public          postgres    false    3249    231    230            �           2606    17207    venta venta_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) NOT VALID;
 E   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_id_usuario_fkey;
       public          postgres    false    228    3247    230            F      x��Ks�H�&�f�
��k�S� I�R��1����M2"#�b�.
 ��C)�͢��f5���E�.q���6c�\ο�_r�w��R���LW*H ���wvݱ;�d�ݣ�Ig6s��/Ű?���^O|�T����v�^���z������U���-�a"Ɖ3	q-.���y��H1v³�D$Ņ㋉�ſ9�@�_�!���L�1�v���*]d�H���'~,C'�X:^|�o�3O�*.���ѐsg�ΐ����<�w���ϼXNCG�6nʲť�;q&2��>��*�+�߉�����C�9cw�O7���y(�nP�Q�DN�._�6Z�-諹:����&�ȥ�og��.-��B��<��?vy��+�OF�	=�`6����^�ڽ��ߋT��ؓ����ha�;b���s|�_;/}>خ�r��j�đ���vT�&�C��U�`�q4j��b�A�����Y�I���x����2�슺]�p�Q0�����m���qƱؕ�D��Y�z��s�GuK�E�s_��/E�_f������t�y���_�j�f���<���N�&�t{��#��7�k��@�y���خ��5;浩�Qr&i��Q�_W����:ު�D�s|~��ݘ�,�����G�橌������x"���eyg��J�*�B iW���awP��Maz����A��d�ҫ3�f]��ϟ��|��-z��0ݪح��~��w����	¤��N��K��+��F�n�^:��B�+gl�呈F�x*gA�PL�C���]K
��c����2|�Tx(lԣ1��:���-��1�s��1�"�P�>� �	t�0�!�nH8���!ݍ��:�:x�����Mf8!N��ך8��^r-�8���H�����Х���][�y�`� �5!��\�x%?� ��ND(�iom�[a%���F�Idg�j�:q�V��O��Fc^9�8jG��f���h��[u1�^��<�F��8Ě&$��Ͱku^���/�VW͑!��Z�֐��������W�5����I�Ių蚎�������A��PT�G�	4G���>��_9�)M\z���d�rԋ�͛K��sg�����cn���_���c��KI�)?���o�wF)!i���	'�<�&b�^���8M#��� �љ��U�' �6}kg�zgQ�k����K��/H �֍X/�t�.:/�FWUX��ЏҮ7h%/���p`}�β0?ϓ�)�FE��mi�� ��8 [�a)�'�',��l��Ű���p�9��睾xq`٭:�x�ϩ]�#GΜ_=�v����yM��u�u
��O	�<��!li`��}���k���!�P�_7��Ɔ�x^p]cπޜ0�~+��͡{�w�۵Ճv��@���Л����0�9�Y��g��O1K<<a�����N��IVx�]�ʓ�'R�/�݈�����͍/�(<��� �$��	�HFa89o���La�*� w�(t��9�a�6m��8Jy!�4X7s`�u|?�'-�n��'NNG�G'�!��������'��j�)V�AMXmCi�yo���Iï�!�r���n��^,��I{q<B`��&��%�T��;{�8�;	�7���A����{{yE(�*��Dzt$i0g�o����	|�tm��[�S�������%3ק#�3'���p&�6�K��7�?V�Y���:��̍؇n���@��w���s�����aG<��71�6�8��sE;�F�Ŏ�I�Mi�^��L�i"�a*�k-=�6R}�����5���)��f�aB7�C��۪�K��s�z�{Ih��5k< j��gZ%���=~��E1�k�v
�;���<����Q�W�ݼ�����l_�JsB�����#V���n4,�f>"ł��6C����������<�RzUa5���݄VSX���s~��6|�+a�ƌ�G��:~m������7��������L�جoZJSH���NU��!�֦����O[����0��6�K<b_~��^n ]�.��0�]����ǺÚ���[5��@�U��{-��B�ipz3�������N>w�B��n�ɮ�&Nݿ)�K�'b&_$s֨@ʨv���$oS���Uo����Ӄͺ��m�=]�PE��P�������@m�|���ܥ�#h�k��˱j�;�[u�_ҏ�G�}B�5�M��ڒ��ū��R��>(F�o
V|����,n����VZp���E�֏�?=��nXM�%~�T��0a��`]��,/ݱ8��������xU��E�F ���W)_�Bo�޺��ݨ�:g#����:s��\߻ˮo�iݓш@WmV KG��V @#4�G�kH3w�#��#@9�KB�a���n�x(���C��;�^��JE7:!_M2v�=Ta<�mzϓS��0N" ".H#�dg�i"/�VB���``u@�N��nɛ�F_K�����d�)�^�XKZ�h���m]3���~k�4�����8Cy�	�σ$��g��n�hY�0%��!���+���s���h�.�о�j��k]��}>�'��Ѭ1vߍ3���љ]c%��٩�awkˡ�\���X��z��\p|�q�x{�ΐ�`�_O����m��K&� p&FQ%�QލK�b�
6����.���,aq2."�<!�4op�<����,Q���	�S�=w�d�&>i5��<� ��rW���sga�Q����D���a0w�zl���Bm6<��8���t�s�\���͓W�W�״�N�?<�*��2��n�/�
B;��4(�X��r��sϐ@�M]us�^��Wf4�����1x<�� �y��o�t��8��� *�'�9��x`ʥ-���c���@N'a��/"2n�}jM��C��d�_��}b��W)�^J־%۾��]�g��l�k��k#�2��NC9C��'`�rЫ�ۑ�N�d�k�Н��"��^3�~h:v;��}8�;b�l����}��A��TI�횵�is��7���:ʲ�|�ݴ�<�R�_�t���o˾����;�W�����]�&�J=����;�Q��Y�ĹC6�,3 ��|���Н!V����u�t�3��sX-��S�O��z���]䔅�_���߷}e�F��Kηj��� �6����\��v'����AHɘ����B�^�U���S�T|]�a;�o_������o��@	��*f߰�g#����Q=C�����������6�n��|b���J���a/��R^��.:�d~O�]���e�G�i�[\���\��k��Zy^:&���r�>I{X�__����=���{\��b�{�}ʄ��I�?�i]ߛ  �4��j,a�A�\�V�̇��*��=���s��ǵ�����x����Qo�gi⹂��i�-U��_[����uv7�np,'�l�E��Z�s��2W�+��}G����e���:�	�w(��h����D��罾��O�O�'���F����p�9���׼>@_�61I��A�Ab�;��ȵ�〶�I�Z�9�qy�� t���|R@j�awN{/��ù�
�S�;����ySY�N�4�܁O{Űt�}�ѱ���������6��&�m!"�s�i��P@�&�|4<b�=��JK����G��ڸ��e�+���J-K!uo$���ds7HC�����2,���Q]�M�<<��Fn0`�A���ē!�� �n�����lJ���� �N���|���KR�zy�Ɲ�lmח��K�Ԑ�+�ꥩ�7�;M���f���KF�yU�N$�n�u���s\����gX\�3��WF�$ktΆ�c���c�z0B�s�!�N$��V�[�*5�7f+ױ�DA�c^��7#��]E��>�TT�!�`���V����=������N��8�旾
C�lg��@�,z�_���.�Ca��~����EJ�Aؘ&~[�+��	��Op�)>�+[�V.��P����N���:EiTZ��P�;_d���-K%o�iL�4� �.�:��5�%G#MlV_sfC�����(�s���V�<�����    ����Z��'\J)_�8[iҷ���Чa0���L.C�p	��y�T朊]�h���oE�>�۱�I�_�,�k�xZ.�6�[��$E������e����IZ�nzEm-C[��%X{R0�����n�Yr�Nh�$質*D��[�iRQ9�z�Z�>�Z�֪��nDbY����_�RJ�����v����TP׭�`��46W��[��^�a:A���{��2L��X4��bZ�����bÓ�;�8���&\��S�zjt���ݡ-��4�pi�s����2�M��!<w	���j�׵���A��]˗@#��4"�5p��<���$#���~"/��+��9ni�3�
k�UO�P��V]����%���1�����U�u�c�#����CvS%u��B.Y�j�g�RW�?�cm����n&�,�v1�l97��MV�س�_l�_n��`�O<�|�U+eɎ��o,Ȧ}ᓒ�r��d�=�XԠ!~�9��/�^})��y�8�������������Cv�J��P`N�S��瀺�^���O.��T��	f�nLs�y�Z�Z�`�� ����^Ƿ�mO��]����҂.��8} �hgE= ���$˩G��5gr�d�ʨ�ҬX�����K�w+��s����Eg>�H�B�*4�T�ޥ|GRiF�����z��^���tEgy���_��[ϭtz��eʺ�4�|��
b�O8d^�}��u���Yq���o��h`�6'��ɶot�o�戇�Zz�K������,�<���)v /� N!'����P�`��j�7WʱHe8��n��؄��9Ҙ�����/�)ƥ��Es�h��-L��T<dx��\�1cB���}ZpEhVuI�f�Ŷ�b��J��jVE�r,#4�ҮiUPq�����G.��u).I��p�.)9���N�5�Q%I# ����Qo�b�mJd_��C�V����W�-R�h͡v,k'c͵��nɫ��+Z�RC�?��_��c�*^�z�eJ�CQ�������F�7�����u8]����j��{�1�3��@Kع��+���	��@S�����9W���|N+�WK����<��(ᆧWk7��-X�QC�/D�tJ)E	�y�Q٬t�^n�λ��F�C2���DV솵΍�֣���W7�hsa,�fg�k��}& ���(�m+�U�2�(�fU�xiڌҺ-�S�@�!��9�<�J���G)˙�S�$)d3�:]"ĩ�0��H�F�r���}Ҹ<^��LZS6�wr�>sg�a�3$В���?f���A�tR�� 8�쑜&Pq٪N��Nr)ѝ�3
E<�����{7�N(�kj 0u����6I*_�RZP��������a��uĳ�n�#Ȫ��/�=�w8�
�n[�?���WGg�Ѡ������i[�9��Y�j]���;��&N��
�x����*Ms3MI8�ۓ�
w"���}�P0`i��=����`к	�n�L�1�a.�	�ADs͍�v���a�x���2�PR)<�8L\2i��S�=��^�z�(P����*J}��%&R�pB��������O�J��k�Ӏ>�w=����[�1�W��}�T�����?����v��R�^Ul��p$ci�ˀs�O�����nd���T@%`���k�Cw�~��6yl�zVپyd�wz�������'V�ܑ�h�k�0W_�ڲ����/vP�M��ӥ]��
��[�9��UڰI=�ێ��\��.q���EP�+O��,y�U�.)ȍ��f2U�t�s��W� ��*z�@�`�̸c;�xkKͼD�=f�� ��9�D���%Z�C��c/�R_��lT�r?C#�e��{�����`$�w,Z�?f�Z�����=X��"sM�9E�5��+\Qfs�2]�	�y���8��t�狷c�`'���us�Τ&�(�����3�\�������֕f�?��I�jn�x &�5���)�S4������N������K)��W�gt��ڜ3R�t����}��O��@�&�n?Aռ��q:p<Qʞ��'��#���9���/`�?��F�q}��@e����<�*=ʄ�/��¾�W V%v-!,�~w��^�ڻA8�/㏆M�.{�Z�7_���o�� ��җ�� t3�����Ϟ��k��]~�v�	���-�(ܸo{�ʮY�?��m��wO�0�����-��R>Q*��J�iк�KC��]2���/����ڧY.��j�[�[�5y ��l6sU��K�^ M�ib���	�os/��I9��"��m��>���35M��U���'*��k\��E�����=�%�م>B���w�aKf$��E>��l(C�}N[�&���g �b��h2���s����F�)��"7_n�Y��K)����D�F�#��/�#:�#<��R�W%��Ui��?$����Ht��Oؾ���.�H�|�b�O�_z�a�W�=��vD�d(��{��ހ��vN���-r�������M�|�9|.E�{'�	� �R�0�B`O�z�)��#yͱj��}¸��X<�9���r|�N�9*3� X���η��W`�t/S��W�͸^�Act��$ A�
�3����7����d	���I�P�y��Y]yN�2�ըɫE�b��
���M����{[�����K>f˄�׸�U!��n4��՝��?2�[����u}~::����h'�n[�r6���pC��k��
��b�,~���4��`���w����]2*���4H�1��%�f:�i*�0�ﰝ/�E��
)��m��;�HHH�L�����&�(�\�ڵn#Z�hy��gg��n�ͺ��@�"�;w���������W�hMtz���-�u����b���D�w>>�ww[0Zy���l��\]��Z��?��+�Q��jU�[Ǝn�k���xLk����zX�fˎ]ݱJSz9�^�V��g�45R�bM�� �����ܳ�v���[��f�ƹ�i?	���:��[�����_�B��*s�	��窽Q���]Wu�]�+@��\�]PH�Cn^H�ӫ�d�f�N�A�8PZؒ�cmM��Kno�mʗ
���9�A�Q��d�I��Iw��yYe;�I++����2��m�۷&�Y �#Ħ��3��8(m���$2��$2��`�<8���T	��j�,��Zǵ����v�q���Υ�d�΀�KӠTޙT�o��G� �+�UW�dGI4Gٍr��c@j��E/9��`S��@�,���;���U\��j��nL�^��!w��%�"����V1����`U.Z��E+�6A����%2���g��hp�st���4��1����f�C�y�B���uMYF�Q%Z�*]���y�=Xϗ��0�ucŒ`���9�sî�Ag����2���8��ArJ�S:�e�2�\֪&���\�}/pb�h�aW��r��1�T�(!c��Z���B~騂���ٙ��ٵ��r��*:���:0Q�/SS���^X��L=YU5��9��p����x�\�8r��ХQ��aW�������Ù���VRP<��S�6LѺ�k�r�?�V`�y��Վ��V���r]��OjU�%��+�=|���(���K�3�� ��f��N���������0��v��ʲ_��������4�ҍ��ω"����?�:ƪo�l�>�$�|��_G=^<b�b��u�	�/Q�0�'+]�5}���f�	8ćG���7^��\�G�V���u[1��-ř��+�nn��������ꕍ�D�������*�蔍�{I��K�eW�f�Z՛˭7~9� pv7c��G��[�%���jC�i�FNCbUU5� �R4w������1B�J#�2ЋM(�.W�/�b��&C�|h�D��d �^C��i�nׇtb�ǃ`�zxA� =5Š���"��Q���9M��W��dME��h$�b1GLe0�qg3�gƩ'�x�l�Is�T�H/� !���|�ah�,U�rX\�$����,矫�?�ZŲ��!�H��G��>t�K���7��2@�CX�    �D?�!����C`i�]�_q�⯵Ѫ/���s����6�E��%�-����!�c�����!��[��eY�q��h�K���ۍ��1���}�V�j��Z�y�R�ܮ��hr����,�H�"�B��o���M�3�'7xvҲ,�L�q�����c���Q���ʰM_|$pP��ʞm����TMx�Z�����w�<���!Ņ>�辟%ׂ~$7&������v^��C�����_a�g:��2�9�c��5_**qEI�H�F��Kǿ=%���ќ�z�RTy!��?�~ 1��$���g��)����%P�K����"V��S���Z���ğ	���l[�q}]�J����78��+L��O��ő���d�JE��i�nY�W���fyC���d�/����'/`�+�zpq_�D�~b��!G~�'�g�,���ʲ uΕ�"�,�������n�d F�ΰ��ą����Dk$z�O�b&��B�螌F�r�8���j�s��(����K)���vŶJ�?�J��A�38<���ˆª�'G����a���Z�ۭ�ʬ�Wfp�'2|�(�묢��4S�V��:v\B�!|���x� ���(��WC���C����*�ɲ���X��\� ��I�֥c_)��rG�5�'�Ǵ��8��lͲ�DU��҂-�;TY{"Z���: 0����3Nsm(�ż9���}�E)Wf)�ܡT�nm�ʬ|���g.������n��&�=<�I�6S3^Kk�0KC���s�r��(��B"�T�h�1	
�H�i��-}����$R�v$�t����ŝ�&�	V�c�Ͳ�%�/2פ��B0KP�m���q%t���ߦ��9B��u�DҴ�*��cfDՊFU'�Ѽ_%x��pӸ�ׇz��uVn�#8��p��u{�o��f��t�ox�/���:�&d�2�=��#0qCQ��#9ss!��k�z�֞贸��)��yB�39��	�0����;"�1���B?�;i�Y��������OlhgN��1�m�zp�gߖRʷ$��2Vt>�������Mk��y��j5a��Q��ɄI����UB�K7L���}�J�
�8I�4s����N�z ��dw���Y�pB�,#)�m �r�ޤ�����0|�AN7�i��=�HnG4����~6�o���H&�HfK!��/Y�E\.�R�#!c�Q�(���� 	u����į(���s�D�����浮����ZNo��&�2��ܩ��4��L�
�� �+'�'���ć'��M3��=�"�����)͜�l���l������0���*�ݕ%���_�����f����P� ��75�$��d�V��4��^i<[gM�S'kZ��%]?�,'�	��!�/���F�����^����G7d{���������:C^Y����m՗��
�i�ϖX�=[�V���3Ϟܐ�]����eJŲ*��1�78��:��cO�~�?������Wq|�s�NB�Jח�i�x�{�J~��<�0ύ�D���fY�Q?�[� ���]f�h�nV�=���Ĳ��1S�{#e��}-��$Č�cg�=��Lh'b�4�I�����1ě.|0u<�E�������XL����`nM�*������(N���~�7M��?��~km#!+��T�5Г�dZ�T>�T���َh5��f��{���>�ӓ�ao8�`z�J5	'L=&1��,���R�C��U��ai��ѝY)�x�(>���?����A#�̄�e�=����|�����ͺe���ڈ�c����]�L�������L�ν����Z&U�ő:{������NYi��+M�I��dp[M�~9W'��w�h|��&�y���hz3U�g��7��$u�M&��/�¸���aDt_0A��J�W�++W�"�Ƨ�6�D�0!�N�13�1wZ����1WIF�1�X9���~������ٮz�pt=��� �Q���2��*Pt��h��A#�VI��D!��_��ǳ�85�g��B�'6KD��ǚ��P��^�dp�Y-�z_:h�Y���>���[3I�PDk�X�����a���-\P�B�@F���E��f�}U�81�(dH��w� J����x7~X_��z���ܧW����I����n4[�������!����}�.6�.��S)�W�E�~���FRh�LòTU����ҵˆ����T^��1����E�/s��>w�'���	���/��	?����r��[<Ū)�.v��XH5Z��}�R\����F��"�}'}/�Wf�e�����=A+rnl��22{g�9��]匡���q�����pI�O;�Szd }�H���r��R�-RiT���j��G�a@��i�����6<lE<�Vl���nڍGC�i2*�b�/Fq�E�3l%\�L��^r�	H�`1�j�{I�����gJPM���+�K*�2�ę��Q�q`�D`:/Fp�Ҍ՞�k�Ϲ��[3�)���9	�
���R;�*nM����2b��M�;)���N���#x ��� c����>>=<��(���6��T���'�O��4���X�e�&/�:�`��<�a�UqYRE\�Ź� �l�maA���E\�w$��JÔJ[�����C�=j���щx��j��_�jH{MT�U�t��:�;䦱�V�?���7hL�(�m���ˡ=L�-i�4b��Ȗ��Y�uL\E����W��4ʣ����x�!�Jє�\��V;�t�֓>�s�2�!��h@����k��37Ra�iCu��`����7*�S3�(q.%h��l!c�,�"��6�V�ܞ���&[A��_�<ܴ@�g�\3������,�a"ӛ?N:{G���Vc�d���_��w.���Uđ*&��v������	\NC�%��VPpϬL)_IP�V*![3w�sj����M�j��_�BN�[3��<Cc�O�����6�z2�,�b^p��t�������`�W�2{�^+�u�a���lӌ���+��v����������nBU^�9?K*��}&�|�~l�$�&��S���x�/�>���UW*[� �Vv�S����V�x\�\(���9��K�3<�%w�����~2���-
�3���׆e�݃����Go�!��S�#1����|N[�1G��v}p��J�F˼�Gwn���n�nl�写'����?���rK����sK�4�����
���ĉ8��Y-�1�)��0V����Ղ�9Y��ߑTH�[���36q3R�yp�֎8�g�`\�?n�Nv������!���ҍK3fUBqq��hƶ��%XrU���ģ����R�Z Ζ�|j7��M�Á��4CYt=��\%�ɵxa�3�>hH{�Z�p3:����|�J��L��Hi��ݓ�qz2O�F'�۵����H���A��;��Ȃ�4͢�}E�EE�L�*��N�g�Ӎ�Ǟ)�|WB���6�\/f�� @a0�h������lmmo�a/�a�Y���ё��
X��p��,@��j�P�y�獣MG��
�ܮfY�]S-�V�L�8�Ї����|k5C~h������QG`�2��H��5�b�p7�l�����b���bPy�M�Kו�5�/�抹-͜��<Nm�"�̥�/n6.�[�Q�G�����ܨB$�1�+���@�����!t���>���F�q�G� p���;���q)�|R�+����|ӫQ΄�O"t��9���(���\���U����Q�U�t����rSdX�����AU�*\��ㄯ��@Y�+�O���3�4/E%r�W/�zK�n>��(��o]*V��0��\~~���3�r9 me�rӺ��~���dA��c*�˕�|.���E��-�ϛ+=�;zeca�E��д�=���W�b���f���p?H���Cn~W���^hbhe�ܹ�3LY5���W�7�X��$��J-X�fSr��[Q>سgl���tsb�D�%mzj�M���MT��)+6o��fa�U��S�Wťy�)���``u@�N˰��+���V�׃��~Mص%&l�\�8    ��V���Fc�&5�X�?D��9��O{@��xc7t^��pM��&�5�J�5U8�``�Aq-����}AK���D�Ɣ��y=���X�ݐ1�R�Vg�R�^@łݰj��޷�R��j���8�V	����KyD8¾���$�}�7j�P��߬��@�f�8�֓��Z�I(v/�Nk�U\Q��9�����cz�,���U��4�ׂ�٬�;
�]����Z�F/ߗ��Ui�ͽ\����9�߰�F�l�D�M�(��fs���
�M��^/��9�4�9�s�I��#�ܕ�<B�_�]���8�	��1�H&j����7�;���'�o"�����ݥ��z�Q�'��Z?�2��ڵ��x=}�]�I�Y��V������8�׎�>m0T�Cl�D�n ���>f���ZG�C��\7�	0pl��so*Ewm*��Ƌ!A� +��댲�[I]��H�U��|��t��p�u�"s�3g�CR� #&��{O�s��-D�U�h���Z�G����^�t�9��%d�*���g��e�4���B�ǞX)��R��֖qq���P����_@��b�{�;��!�[��EV6Zg<H��aF5���_�nW��P�s���u�j��P����f��~ �>��o��B�*�#�d��JA��E��40W��aH�Rq<2����V}
�P��i�%ma�(q��L�%��3�=B��TG:�uv�>q��[��U�=�y2�C���Ť���I�	�B&[~��	��u͜%�!����$Pj�nCYj
/�f���-e%�4l,�����ʊ��Q@?2۾�͌�d��u[l�����9i��\��zޥ���of4�ã��.���ߙ4���=�8r�D���tb4\������l&N��#	g�+�F���>%c��6�~�\>�k�6c���8
]'�����������g�.������8r��@M�f�M^������`h��l�j{z�۪���ٲ]�#��q��_��s4;���*[Z��QB�s����C�����Y�砺������uᰋ�p
E��j@�x'��M[k�v"���_n^���N�<
|&F�tי�e�;���G	��qqv�E℀x6G���\��������i_���3�u�O�'������'�g���;�n��t�u�����pt2?�W��?�pȟ�ܹcJ�{*���e�_�a�p�ϙ-ޢ�Kj�|�NɞS厛2
������+p7R0����s.e�+�\�j��tT��;��7� �Ŕ:�Cn�UP0�y�V߂��<V�m1���-��h>a4_ꮼ����m���Axs��@�_ү���Q�^7m��ͺx"�fPV��imC��r����~�y��n0~=w�%=�cN���픴T7��s�6X�dZ��J5��٩�@���9��AC��s�)��{#1�͍"�t�A��o����ǘہ}C��� ]z�V��7,Kg�����A�{����;�jn��k���*;YŠuh:��< }C�nU��u�~r�I����G���Mnr%��(LPHt��	F��O_|+�om��`3����qGE��3͉��Jφ=��%�dB�y�a�v�Tfj���q���nes�m�.~'2�5�ksrdQQ2�T� ��1A��X�O���w />�E"����X'9P|i�N���ܿ��:��|Az�xz=�i@��S~Q�&3&s�:*į�ã���@��_���X�ax��[��U��tI��?���s>���l� v�5˷qE����2ڪ�v�YV��r�ǳ�Ʀ�����P��:�DN���jo6j�y�nP��8��<����!U�u��j�а��k^͵�0�߬%�
 ���A���k�)�m@�h/s�rw�Żs�G��τ�s�f�V�����A���E^(@v�s��k=�o
Q�7�rS�4'�%��w��<���ǳ�jf��\>2��\pAI�,�&҄rhY%3G�N�jQa�~w�{���_ �n"M�d4�����G� Q�W�p���:
[=b���es�3^�A/��<�NwtJ7�p|G;|�Yp`%^�>M�5��E���8Jݎ�d�ynG�K'QL	��ɫ��r���RiW6ەf�ۭ׭�iҘ��� ^R �]�m�`�����F�`3��ݢ�S�*3hO�@��X���9ӕx�ŤdO(߈�:g[[�N.SwB{����v.�VP_�F-!��&o�L?�Z��ʅ�A[��V�j9�wA:�4�'1q�˱����-=�T�Y��%��\9��Y�J�U)!�H�u{�
�����'Y
�X÷���tm��D�>�Y����-��t�sdh܆��s"ƴ�vҐҧ�#�gN�����l��Z��=Ғ��,D���ϧ���2�e���bG��b�w�U����L�Q˒�}kKS�
�F�.s
RV`�zU�q�n��[�}H�]�l�F����F�C��1�"Fo����<��4HgƧ�kF����큶F��>��f���� )�t��'Wln���`m�4�����n�l��-��\�قt�xt�=��Q�U𰟭�3+7���exN��?���UX�Z�ZZ ������(j��*��3u�=�Q
�'a���-i�� �h-.em�L���%�/d�ؑ�C�{0Z�ZZ���ih�ie���
� �}�^s�,3�{ώ�;*�Ӵ��M�[�:�@��BS�9͇y	é�|ɬ�R�:nY��'b����ـ���ӻm�\i�7W�h�%��d]�W�=RMpɒ΃Y
�؎��Ok�f�`mg���o���8�`W�F�d��N��KU^9�`��?�|F/;�sX]TR��W�&�>�A0�`��\�páZ��w�� �m�O����U�.���`�m ��>�'��=T/W�[E|��T%��/�ȴ��̗��#��[vpg�}�V�̪�*���Q>��^1����#l��9/A��<���D�,�Ύ^��wl�ީ�,:��%���,9�S�:�<�]�`���6�3�(�>פ;M$*��|�ꭆA����9꒎J?%6�ǹ$��=cn5V���c3�đ���o�W�'2��#�A��c�oX,=�8��܉��� s��V���W���XK�k�v�(�Q�`c㹤�����7�b��1JpW.�HG�����
��9oh�[���9S�h��^:]og�੪k]M;9mbo8��G�4p[���zpjk ����;�{�ӈ]9�?�(��f�B�j����/�6�R�b���-^��|So����`s��j��c���=��(�*�s��(�^�*/$��l��lP"up$�"i��鳲��R�R،nVZ�����t_�Z#R�.D�M��嘛��нz�T�RMo"'�v	`��K�Q㚮U����w������S�4����=��yr�P���Q��V�)Ί��ε$(��R
R9E�v�>�5E�j� <��o7R����258P����'qx�Ό`�*�_=Z�����oL�K)�����7,7RX�5qb�g���z���@������)���N�:�{��*�N5T���as���q5wgv�AwMaJ�f�>���AVI��9΃��ړV(�*��RDE�oj��3�q����rf���$s���1p�;1�9���; �����f�� ���pV+��7��
���[��*T)�|��V��2��\���{�4�͛%6��\�'H�3 �3,���mY��].�RJ�{a��m�y%���V���#׹�A����C��iVf�<���=&0����8A5�����8,�i%3v
��ݐLE@T�� �>s�8�Cw�J�e�d�d(l� �l����*�3C^��'�+G� s��G)_�Tr���(ї�����(�\���=��sGg��'�4�A���r���1� C���:�*G��DF@��^��R�U��u�[)4�.dH/�Nj��!�ְ|>4Ӏ콃Sϓdy�Y�q�A��F󊈓;}���P�&��S%�����@k�l��������l���b5d��I��=�SGg�&�)U�b�|    �(�����+7�G��N��FFs$5���U�6	g�#>S��	p����9���>3�ߤ|�ݼ�<�B��E0;c��Y�J�_�|sRiTږA�vf8;��}�mB�U���x��蜛v	�%@yR�p�:�:���*��W���U�[mו�uxaU4�����O��MB���ph���0�?����R�P*b�6���qY�{I�oܓ;O�*�ơ���L �&%>��˝�7y�?��.�MbJ)��� b۔MY�lJ_��}���j�fs%���o7�ռKk���H��j?jwU��uZ�(J)宥�Yi�.����DY�3't=�c���%Ჶ�y���5��s�R�4&9�#?Ǡ�;f��fݖ�L�p���oC�^�VVO�@�=g�c��J�.����f�MA���5z��Q�<:��0Ф��I4j*���o��ㇵ�fs�i7V��꾅9�uprr,N�G=�\2{���	h���hz�O���[��;r�h�",=چ��ʂ,�M�k�s���X&ŎP�Հ�YJx(e�x�AA���i]}� �+���̥�_��h۪�is����'�2�{��5H��v��K�܈5�)� )��3��E��Z����N5���tʙ�9��D�Ntf��������L�as��T#���Z�=E$6E�d"%3�O�jD(%��>�*�<��	R�U�;��=~:~ *�"�9Z��/�>>=<��ק_��;9���e�k�ݖ�Po�YO����3��O�s�R��r5���HŲ*�͊�^�G�撃[ek�f����R�3��ȹ4����0�".�	j�x��ƞ�J�M^-�PG؆5�/�n&�Xy�5s5�ۣMq<b�|̹��柆7�-��ܓ���k3Ĭ��b�nm�؆񾕿f)�|� �ۆ|�j��h����j-�G��ت5��s���슧�u��8h���6�l���h�����������ԦV�������&�	`s�ʠ/!��n���<�S�5�LQgj��Tw
������p��u$�.�b��MFU�C+HCTaT�@!�fOѽ
�m�K������hal�⭚E+�~��o/��$r��%���F+�N2�Gr�u��H�	Ä�.e.����-aW-zOq��4/�#�X�`���7�Z�?m����JG�3	�b�ٰ�6�HM����ڡ�>9�,������-_��[J)ߵT�+������E_�Q��}�|�=�`>sL���n�K��@��k)�Iš+︒K(���;h��@�^�~�`&㐍����D��B�	���y_�'�	�6�a:�m��Jf��u"�S��r6O^�!��B�l4NH!p�b�����#=e���';xB`�A��`�x�]�:�Lw���)FC����?SIj�M��ޡ 7�)Er�#t��D��g�6���%H�A(9�dp��T&��q$A7��SU	q��蕈�Stk^@8#.�X��1�*i�);ŗ�Ҷ�ƦE`��<�,�-@�m������Lϵ���?ĩyq��]^&d�ml�ۛ/��[;b�#X-����*�ԧ[��f��է��|���m��[t�K_[�Ga4wLf��?���}-�,��G���~�eIe��0n�v��ި#�v;���B����;v�	X�?��&{�����`J������j^�,9xV��_����w3PwEs�y�}С	!07Q0Z�9!rl/ڀT�,����	�t}�M��� Nq&2 Q7�:7}�,䌡<'�U1����c�2���de�v�ٴ�$0qc�����©=^�;OIHU
1�k��_���}�ش�x��(�gb��a׫d�J���)� #]@п�۷�,��	.Ohz!��i�8���k���ׯZ|��8�����c����BR�O����n��j������_�#۲����J)偤bUZ�J �̺��~��~�K\!��3�l��-��L잷���{�f�d�$���w�v������u|�=U�
!(�?	���_0|��wvr��t@v����-��S��J7������W��is����zWs8���	N���@�~��4N�a���!�l����b���S��9@���AG�<6<��e�?R�Q�D UQ��]#z=���jR�tgM�`م�w���]��%�jCL�z8qΜ0�.����۩,�v��a���G�e��۠�����󭜡�,����)l�?�ʩ��&s���s$�/D�s����!ZP�MCMB1ܷ�/�Gb�{CA�I���|�B8�hC��C�3�0��v��`Ը�![�[��%?�����z���;d�&8Bp��8�=ymb��3���UdÇ��:�s�a����M>\�~u�N�5Fx�@ۍl18z���3Iʮ�����pY�X���`Yy�{E�b�F�~��P��*�4[V���	UZl�2�K��Tu~�"�.P����=�n_�5��w����vZ��H"鲥ǍR�>)��	Qw���1�#=r�)��������Y.�����b3e��{S���N��|�o�t�A�&��Y�d`O�s'��-k.��7(^�K-�Y�ә!�>Rx��k)�@�9d+��UL���f�(@��"N�2�_��)R7�>�R�$�"-��Q�/���˴��B��z�Y�v����a�}z8x&�=�=vE�����l�,��w9���0��p�/q�yC��
:��~�*�����ZH� .upv(�M��uW�L�6t1\���s�ڜ�S�ߜK��p;�\��U�6wP�)mut����%*����7HVu9���Q��A�(�7fHb�Eg���ZW�V�5�RQ��1�]UZ��8rY�d�N��Y� ����*/<K���u'g9��[�"Z��L�uㅞ������%]��/&{=�t�4in6_Ҥu���[�V�D���%r�
���9&�<v�H��x����_���L��ΜI�x疥*�X�"���o�;f�:�4��k�Ft��R����:���9AV��3���Y�^�J9ѯ�ch��,_�jf�k�D7ɱ�aU����ُJU㋗J��i�n�P�3x�Į���Ү��4�ht�c.�t:A�R��8���D�k6M�Q��9��»w�߹�˂,X�IqR�ٺ�v0P�9�\�����T�҅�t�,�1~�妸i������w>�x�7��M �l��iU�쪼B'�xi�t^�th
�."��TW>R1�X�zn8N���p�U沍�!���n�LO���)�g�̒)=�^�No<;v��~�oTo��r�9Ttx:$$=5⋜ʈ��!J0@��a��;B�I���uR�7$0��[9��>��!�m��yc�ކ�\��{I��% �i�/"�q2��U[����^�zw��}��+Vr.�+�0��r�i=���롸8�U�/A���j�
p/?��X����aY����h�q��9ЙT�P�]���R�^��u�ѡ�b.�zn�.� u� ���_D�x���D�>?�{͐�v���7R���	Y4��Jj�f����T�vnȗ�J�<HKu�=�i��G��y�]��\��M���^��-ܮ�g��^������o
���6��#d��C(���w��9>k֋{�'<]���&�v�s��w�tG��Ш ��e���d�p��%8q���.��:�u (�L����S�Y�2F 
QV��O=��G��S�������;YY�{��U$�xI�f�L��C�O�d	����i����/�=IŪl�Vo��Z��Ґ��1��)����i�W[e=\�iG�'Icb�ȉκ���'!7��*pb�>鿛��Z��:s�)��A}��o�<ŗ�ƙ̎H�U�����o��}H�d�2W�~pE �z!U���i�>7��%Ip8Wm���3���.͒�ӕ��p$gs�2Ul��W�{��@t���9��e�j�
T�*��K�l8J����}��R��B�s�����|Uh�P����ك�4���4    ӯ�s��hؚyβ��8˜P�j�i�J)���f�nW6+�焗V�Q71;s��Fhs+�E��V�a�9?���cU�d+0f�XzN���d�X�s��؍ι�Juΰ�����h����5��5eR��iD��͂Kc���j�a�L\�~�,�q�i=lӫ�J�����}��I%��t�Y���7.�����RJ)�a�����K�\��s�͘V3�9�� m#����f���[�
�[��Ii��*�V��5�����H����R�qY�m3��va�ӛ�؃hM��Sj��Q��]�߬��ʙ�A9ܪN��z�#ݦ�G ��QP�E/�;�M	��ߑ5�SM|��PJ)��.�Uٶ87�<�A|���C������8�������d57��4�7��)��=ť��|w�k��7l*���& -a��3ݜ,�Y6ʼ�<&�v�y�l����37��Tn0��o^E��4�K)��-gۀs�h9_��8W���ś� ΍��Á��<�϶����]J)�b�ݕ$�|n���p!��3@���5�G
�P��n�l����������Z��0tA~[��R�z��d6723�Bg~��ǻ6��F���i[v��hfs:���p^�V&�}�R&��R�w!���2�ܾ-޼�9o����-�sƴV��-e5o>P"�*6�y1[����p�z�e��F����9xV�Vh�x*M���K�Sd�F�������0j�F��]��῁��\?�a����?��K����ql�̆bm3������'ӹ������U��8�U4kM+�d�CKu���*�&\tv+��9X�"(�i���p!�0l�b'v��q�?��4X�lUD��M�T�5��D�4U���J�օ��M�����n���Yc6��e�~������D?��^F�H����\�u�]���=2��RJ)��<�b*���/�������O�v;�2�{���^o@v;�����G}��>eLk�����$ǝ��ɝOqi�%*/��������@�r��a�5и��D16���qSV�AH@�F{_��(Vn״��I��lG+�k9����_���K�?��~q�Kva�{�(��'�"d�V��fv�@5�G�B���6��3@��ǞG)��r���y{۠���nop�l�#�?�pxt��:���1b�٨��%�_�Q��e��ghN��x7%\ű�R�/��χA�)r�^��}!��"U���_��ɫ*z�$،��j8����`�+��.�;j�
�;��Mzk�z��?�+����D�R�I�{F�{`�+��R��h~.��c;z�����w�����tSyݠ�+��P�3a�9�S�2n���w�E��g%Q��AH�29w=��z,�%">��]&�w���(= ���t���n�6���Y%��a�6�ɓb��p�;.h��@L�m^��;�ԄJ-s�N�J���W"�����O7w~��֥�Rʷ 0������Z+�<���ɨs��d��^rj7�� �**��A�RF�;� v�N�]9��"�9�硜�ɬ�#\^kP悖(8w97wB��Pro��i���86��W �f�.�Y��d���W)�Gfݕ�\J)ߞ(��a�ys�j�ݭż�dn>0���Y�<�16ؚ����a��QF
�Л���n
�x��13���rY��j]t
�D"gս,�R�k1��\�Y�r)�|��40�nꜭ�N;ǣN��G�� ����8��}�@]�ڍuq�� ��es�yS]�Ա��\勋�B�c��/�>k�H�)�����M���y��7�=3]m��}Ӓ�=�]�r�t�\���[}ݥ|3Rs)�|���TPY�끹������׻g �vkٕ�z`&����T*�d�*V��Sn��3zM,��T��ҝ7�G(|y-F���h �Y�Y;�=�p.x����S��8W����(>F�s��̭���g�'��-��*}GŵK��+���+ṔR�=Am�U���l����qe��	ň��'���7����l74A�	%>zԆ��]4��vj��3�����OFO��a����_Ҁ���2V��,�^_T�L�{�W�#1z�u�b��>=>��Z5�k�ɖ������AQ�E���r��	ꄳV��"�i��5¡�*`v���� �w-��NYc�53Ei����7j�y��κ5>��h�K�/v2J�4�(&��L�H�v?H���p�r[dR��|�l٥�R�]�2�M]�]ly���S'|-]WQ(`�Щɟ:�e-�UY���wɾm���v*��]�NFf��ӟ^����+ډds������v�N�/B{$s#e-�p~����3@��'�;���Ÿ������*�h�N�xGu8Ӛpz��4]�s�^�n�1o����x˴*8s"�?���N��]�Νˀ�p��\ww韇����^�v���L�9���Lr1m�L�P�͆�Y↞�%���=� �O�M�F�C���V	o��J���k��ȝ;b��B�όݹ��d9��3DN�̸8�	)�	��w@ɩ}��K)�Dy-˔Nٍ�:�}�\�^/�m>���_�Q���#�'�Q�3mno�������;���fb7����c�����}F@��	�����L��&���cU��=���.�!��=}7�����p�X��p�M	K��.�����w]�nsЫ�b��4����HU�r�%p��mK�S^)%͌�8]�*��Y�g�R�!��m�F�v3����wΣ���s�j�Z΍�枪<�Ht��u��|߱q�|�7�+SS�&:��y\�A��SԮ������kxO��i�:=03��q��]J&K�����~g+0�A���p�R���p	�ĩ��d��ھ�m�D�RJyP�x�e����Z�Y�q�3���F��Eϊ��hn>2w��h�ؑ�������x��Ay�W�ǩw�H\h�u�V(1æ�)��0)c˥d�d%Z9"��b6{�����QZZ?O�*uM_�y#$[�%$�R�#�-S<eo�p�����{�߫�~��A�����`� �s$6��ozu�֮�x0��ƌ��z=��ܻѦ^�n��p���RIeY �<W�!JD�9<v��M��<վK7"&N��"�If/�;��d1b�Ln�� �S��$�ܺ�aQUD���u�F(��/W*�|1��FPMf�&��V՘���__;�,��( ��A����).ލ/��ݵ�W�Z(��Gj6]"���φ'�0�/��g�����PP������6��	u3
B �U�jg�K1�h�0MtS�ǋ�2�������ʩ�QT��[;h��v��$��#@Oq�C~����z)���2�My�������в�N��~~8<�=쓝��i�Z��x�|;SgI�Y�+�^4�c��V���sP��u���d���K)��̦��Q�a7��w��b�[���%A��?|~GT�+n�u�٪W0�}Ke�}�s	O��E�8J{��Gft|F��);|#B@.����!�&��lwc��g���p48���>3��gpz�l0�r�'�rp�T1U�Y��>��2V%�@�$��2]ɧ�ٙsH��ܪ���;U����!�,���}*�q��a�j�֟&+7Խu�O�����Uh&��L��C�J���IOrW���xǗ�j�����[*�2�<�G��l��΄��DrMS��r���,s[׳}�TI룺�3	����z��Î��\=����v�D��g�x�?�Zv��d��xt�l ^t�D�~�9����֕e����C����E������ ���:d�_�.���#Ѩ��1��8v�0�M��F��q����/��E2�%;�t{²6��#|3�(��^&��|��ߓ�T��@�==$��D�I�ߩ�G)����Js�b7*ve��{To�pz�32oy ��S������i[[���8�z ����������VU�����x��X��J��z�6V�!�������xPU_. =R�C�0�F�*Gw�ʙ}�Dd�9+]!    �D�j�.��X���|W^�*����&�%�ͪ�: /�D��ؙ��@�K�}��yz�i�h�;�)N~�X��J�ϺR$�A-���O�Z]�*^����¦��W�3��K�-.�G�y�_��Wǿ�G��O�/(��R�G�����v���j�o��yt$�y����`��7��4��׹bo7��֒���i�s�R�/٬�,�	�d��a՝�����4W��^�����J�K�e��.ώ��R�c��D]`���U��\�M�9;P��?�i)w���	��ٟiשּ>zE���x�z�b�>�Rl�Ys��ʂ#㚧`��J�����#,S_-�I��w#ye�٘o&�IOF��Y@�8ҳ{^�q�Ι">���}*~��n$�,& �	~���©��M��uSp.�ˬ�Rn�J�
��V��:�A���aۍ���-,[<�W��g��p�h�+�c���6[[�vcŎV�ݯT�Ɲ1�d1�el�H�"��p��#?잌Fbx���S?t�zG������io5��A�;��u8:�v��tpx�=<��{C������y==��p<�j�Rg��?y!M��N,���LX4�l�o��BK������������`<�pg]���ɰ�_�m�}�WfO6�U7�܍b����ih̳�5�:��b�Q��I79�A����9ޙ����rB��K?�*���ۻ�嶕k;���+U�V��(�(Qܢ(JG��r\)M�$�<x$��#w���љe���O�ܽvw�A�ǲ%Kr�.�mt�ڏ���a�$@��i�Ϯ�cڌAŉ�/)3����?9"7V�\d,9�$�O���b��ۦI������9�o�j�;z���V�޳I���S�^iL��"r��`˥������X=-��1Aš��H�]�\j{v�iYbL��BFsX�/"�lG���(�1qg��p��\p�-�D����͎K�d]\���e}��\W_#s��NצsOwT��s9s�e_Y���\��������?��rz0��[M=���#o!Z�5��.�g9�DXW�դ+�+}$�&!��n����m:���.3r��TQ�gi5���4�Y@籜ayOo��Ym{��~&#wI�$�2�[--[�qAs�*�c�"����T�r��p楊b�� d��W�H���i�t����'�QP�'�2�ub.ȁj�	���4F��IA
}R��\l�瘫���>ul���Hn�Y�>짴�r��9�A�n��A�ċ���n�P��aA��.(����ۏ�ʣJ�l|:�3aT��Ӷڽk���i4�������CU�s���ς�~ۑw��f��?N$���B���_��;��������ߞ#����'Q�3-����+��Vg�${�)�OQ�g�����R�Z����YЛ�\:�㏥yx(yR��19�&��?��}�?���r�Þ��6}�/V{�zU��km�����ӧM�M�F��vzG=�{��2y<�[��H�{t�6�w�K��~�!�v�ӻ�U=FrbӀ�l� ��-���8b�o�Ͻ,Mg�Ʃ�h�p�%2�F�F��q>���r���R@��ᘠyv��o��?wO8:�N��7t�)[fN���l��n����Vw9���4��ۏ��B �
&S�-�g��<ɊO�d�pb4R���D�� '�Q�u.n���H��%<T0�<�EJ�NV��7�U�M�@T�ؗL�c-K�to�`�9�#�yh�)�8i�0�BA���u�*?svG|�2Dm��W�����ݤwll2uс"@� �M[�_Fg���iC�:K���t����N�(�H���sX��L-[��u�:�ZW��;a�g���%=zԐ	���ҭ9!��hש��-y��Ւd�%�h<��hnDg�C��Ҝ#��M���j�����MC$,v�?���~A]++;�s��;M�,���_��3��\"jCU���5�kC��6f,�\ ;���G�mw�������8Q>V 㽥��+�������ېQ��aкSԪ��܃u-yZ�a�ew�+��@��1y+�3�-�`���^�V<�_8;i�ބ�(�;��f�~�1d��n�(KI"�tʙ��{2���qL�cdrJ#�?j��וּ�pm$F�pQ���������A;.m�	�N��k�f-F�k�m����x�N�E�.��ǿ�G0�͙�}�jl��L��s�*;s<�g���a<X�)��-~���E�t��v<���뫳�la�-<D���yz���;�!x>{���c�FaA�ݦ�7��jT%{8͆�R�S�B�9ȓ?A���Q��ʏ�eP����7�bX�O}fX�\(��+��L1�1ۆ�O3	5f]�u����)>x~H�\�)�Csש�۪U-o�vm���l��#Zz�P~ a���]a��]P;~H�:�߾��eU�XxΕ��q���7з��hS�?�>��+FA��s0io��F�+���\2O� �E��;�@C(�����"���⾐��-��*̪�nY�ն譨�Z�`Ofy*�X�"R(⹼x�`��ϸjU{�Py�c�y��̤1E�i7��_B�D����޺���,��P����۞��ɛᚍ�ʺ��RH�y7^i(��6��	��I��{q�a.c���#��YÝ�U��0���Qc�S,5���b���fc��[��8W9,(Sj4u��Q7R�JQ,�D�]���xm��`y��Ѽ��y^�sD/�L�� �zmCB�0�q�;��1���ZtfӶ�~�]���9�됙_C�Ym������`�ڬ���̬VgA��x49ا<(G0���s��ӫҝN�4�HZ�zaW���M"��k��`סS��0�b���P�	�e���M�,�'�Þ�'��#hꨰ������K�F�OH�Zţ|�$��o�#�z���H�x�V��^�A��ٶLĕU�gZ���s)}�ֻ.8܍L�4�v�wď�I��|p�v��GE�b[���,������r�l�:Z���PE���o�
�i�x%�(��S��yGi�K8T��-&#%'����K�|��$eE-)0�"��.��8���J�5��U��o�j�Fk��Bind�'�f���p C�º�mv�Z�����O]Lc)�Fk��nc�1[0=�e5:�X�q2� �dra���nX�Y��h<�˵{#���چ�)��V�R��/ς���h[X�&�`N�8;ժ��As��U���EB>VF4��yKH�s�Ky�>��P�n6����L�\"s/� �1��#P]A�Ҁ�r���s�l���RGg]�$��q*}��ȸf̽RW�����$_�TΛ��m��k^m������𴙄e~��*Q9���FP�]B��
z��Z�˝�^z�6�Jx�re���x�bԇ���}�^<�c(�ER����	ܕw�jU{�V۬�-�	���%Ƚ{��=X�6=g!-�7՚��X��I�p]�?��X��yX�Zg���v�!Л�'�|�и� �OIj؝��!�B�Z�V�	��1�V?�?��G~,*�õ��O�a�<%2p�<��\g��6v�=IMEFl|Ʉk�1"��}�s�g�ߚ�&�,M)N0���q$j�PEG��F��?���ɸ_�1��1�T��P�_��N1[/����'U!tl�1��yȑK�D�Z՞��֥���f�iid���'(�ޑ�L��d]nt[ʒ���I(���j�q�PHi*^(C5C��$g�o@�4�g���h
�y0�\���oT�0��s��1A�\I�קKRzA.����h�U��%��{5sJ/:tj)#�U���$���T�r�˾�V��s3M��CQ��&���\�9�=�Gr��(�ʅ����j&�aN���� � ����\4f['�)̬����Ã���}�ԓB���@��ԇa*ҵX�?�A��y���=$�ә�9/}�l{�e����Ȳћ�6�����Ω�{�ܱ�\2��*�*�A��1��j�T�[��U�X�[��E�j��u�>\O�5�ٹ[/��������_W"�A�g��A~����u�j��^�
r����Ty�n?�=U��n4�܀M���M� �  �NAI׮m=���[J*�-S.Z)b�GR�G/��0�*�m�J͡�4��� ����@���+����yq�,�|��6'n̙�h����n� ;�4����`xp��֋� �؟�ꒁ �G��)TUw҈Ø�f��+$2BF_8��
&YK�u����+�xy���I�uIn��7�R�S�2u��+�&��Q��b��J��a�;�-���LjK����Z���跁�t�������TF��m�f��1H���z(o�]ʋ����t�jZ��UV����Fߠ�R�J�͹�*����/���t�a)R�%2yp�пi`��W]I�v�$_���� ��m������5��sQ��8�i�_3��c�N׿ ��W����ǙǓ5�	�>��O�U?��X�K��r~%���Uʠ�zϥ�J���1r��\��ŮYՈ�pΫo�k�l�Fe�q�X�{{���vp49��x���5��6���f��{��O�˽=g0�z�9X()�{�P�5���},ө�8��D\؁ʮ�G��wlן�cU��~�}d�g���F��,^F֮��i���U'��yE���D*�bv�dw(�����t�
Zx����H1im�����9������̖��Ϗ�z�? ����qp��_W���@����e��O�{cR��=Gx)dO�����w��r#��#u��%f����B1%l${� �sw���*�<��W^���Voy����̒9����bTn�Y�/r��N�|��tQߘ���>��#���$n��D��sc]@+������+cHnA�úp2].LнZ�/�j'���UFIͤ]]���ur�Rzq��	�U�?�ϙ�3�A!p��m�e� ��}�紶~@lu�WH�����4��m���i#[?@5#�굤���'��(���ͳ�{7��Qժv_�Y���Z����py�m�bZ�&������\~��Ѕq!q>#SȑIz�q�L�D�(�3p�@�=OE)�\�Y��Q�BL2]{��b�.3q_�b��a��U��ZR�.j4�&V5��x0q�b��\_��ޕtHBZ�gV��� |��鉋tu��/)��E��"��5	}��jY?�ɤIzU��}�Mu�k����Y�i�����i����	�е�]���נ1�W�r�)���H��7�Pu[XM����2���:⥑�p���,Ⰺ�,l�kБǥ�\��FU�Uժ�E策Ff��F�|��Q�-\��O�
���$���@�ezr1��t��1r
���R-QeV�E�ι�\m69lU��ڎ*�g��r�0��C��f��c�Hc$9���PZwP�A�94UP�W�JMYr?����F�y�4���#���3��������UjQGe\�I��{�³����Gpn�j/�V��4e�Y՚�Mz2(�qC�9��/�9�̮���̾��$éjm<E��s3�uɱ���<e�:Z�"��]�����YR��=��˼խuj��l�>k�y������"      I   s   x�s�L�L�I-ITHIU*�Cpr9!{�7?�$���!�N#$��%%�Io� �1Wrbqr~�@;�r�i^��W�:���i�U�Z\R�X������T�:�N"p�q��qqq hĮ�      K   w   x��J-.�LNT�%�̂XR���X��g萞��������YPT��D[�89ͬ�����,�L��F���0|]tKb}|���X��b��i#��n�ihheblej�gijhi����� �#}�      M   S   x�3��J-.�LNT p&%Z&)[&�Z����������Ҍ��� �@�р�oddq�1gpIjYj	.��	�0�c���� �<?      O   -   x�+-.M,��W�%�,�4�JL����,.)JL�/��EF\1z\\\ ��!%      Q      x������ � �      T      x������ � �      V      x������ � �      W      x������ � �     