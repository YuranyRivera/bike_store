PGDMP     ,    :    
            |         
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
                postgres    false            �            1259    17105 	   articulos    TABLE     S  CREATE TABLE public.articulos (
    nombre text,
    costo numeric(100,2),
    margen numeric(100,2),
    impuesto numeric(100,2),
    stock numeric(100,0),
    marca text,
    descripcion text,
    especificaciones text,
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
   categorias    TABLE     \   CREATE TABLE public.categorias (
    descripcion text,
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
    nombre text,
    email text,
    mensaje text,
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
    nombre text,
    correo text,
    "contraseña" text,
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
    public          postgres    false    217   �       K          0    17116 	   contactos 
   TABLE DATA           U   COPY public.contactos (nombre, email, mensaje, id_contacto, fecha_envio) FROM stdin;
    public          postgres    false    219   ��       M          0    17123    pago 
   TABLE DATA           K   COPY public.pago (id_pago, nombre, direccion, telefono, monto) FROM stdin;
    public          postgres    false    221   ��       O          0    17127    rol 
   TABLE DATA           :   COPY public.rol (descripcion, estado, id_rol) FROM stdin;
    public          postgres    false    223   \�       Q          0    17131    telefono 
   TABLE DATA           E   COPY public.telefono (telefono, id_telefono, id_usuario) FROM stdin;
    public          postgres    false    225   ��       T          0    17136    usuarios 
   TABLE DATA           U   COPY public.usuarios (id_usuario, nombre, correo, "contraseña", id_rol) FROM stdin;
    public          postgres    false    228   ��       V          0    17140    venta 
   TABLE DATA           U   COPY public.venta (fecha, valor_total, id_venta, id_cliente, id_usuario) FROM stdin;
    public          postgres    false    230   ��       W          0    17143    venta_detalle 
   TABLE DATA           a   COPY public.venta_detalle (cantidad, precio_u, precio_total, id_venta, id_articulos) FROM stdin;
    public          postgres    false    231   ��       q           0    0    articulos_id_articulo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.articulos_id_articulo_seq', 2, true);
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
       public          postgres    false    214    217    3237            �           2606    17187 !   telefono telefono_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.telefono
    ADD CONSTRAINT telefono_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) NOT VALID;
 K   ALTER TABLE ONLY public.telefono DROP CONSTRAINT telefono_id_usuario_fkey;
       public          postgres    false    228    3247    225            �           2606    17192    usuarios usuarios_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.rol(id_rol) NOT VALID;
 G   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_rol_fkey;
       public          postgres    false    223    3243    228            �           2606    17197 -   venta_detalle venta_detalle_id_articulos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta_detalle
    ADD CONSTRAINT venta_detalle_id_articulos_fkey FOREIGN KEY (id_articulos) REFERENCES public.articulos(id_articulo) NOT VALID;
 W   ALTER TABLE ONLY public.venta_detalle DROP CONSTRAINT venta_detalle_id_articulos_fkey;
       public          postgres    false    231    3235    214            �           2606    17202 )   venta_detalle venta_detalle_id_venta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta_detalle
    ADD CONSTRAINT venta_detalle_id_venta_fkey FOREIGN KEY (id_venta) REFERENCES public.venta(id_venta) NOT VALID;
 S   ALTER TABLE ONLY public.venta_detalle DROP CONSTRAINT venta_detalle_id_venta_fkey;
       public          postgres    false    231    230    3249            �           2606    17207    venta venta_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) NOT VALID;
 E   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_id_usuario_fkey;
       public          postgres    false    230    228    3247            F      x���Is�H�.�f�
�zV�2�(� G��^EQ
eRC��!˴�HHB� R)���������n/��r��^[�j�f�e���%�|��T9��Y��H��g�sL�i�/=up�WߛϽ�m�j<����`Pq�{{{�z�V�W��q��U�S*㕚��Y�u'Xa詙��^rG�J}u�Ej���x�XM�H�!K�a|����&��yS�J����G-V��O�T���.o�w��J�����t˅7�3�P�$�E�Ʒ�ܣ����M����C9����x̼��V��Y-��^E]��>�Co<~��8yg��� ��]��?��|=:�i����^��#�T�^(Qi@g?~3�GtiE��J�E���i�/q�����T�aE��!~;���Vqj��Oi�� ��H�����i���~��H�n��2J�>�QS�^D�I�:�YSG���U�h�s:���j/�$U�9���Ӭ��m������F�Uw�j���j/h׼A��؛.Ձ���횺�k�����e��/xC_����4�w��35���"N��/��Ӛ����u�/�u�55���}u�ު6��a��G��Ԉ7{��vUMVW>�E��PUnK��r�S��a�E��/�%-��huD1̎�ݼ��x�^��~{�v�ө9NxU!Ns+N��?���2v���4^.Uo6h�F}լ����{F[�vh���۪��
�Xz�s������}�����9���o<�A,�;��/H3�9Q;1x�Ҙٻ����8e�$�`~��ӵ|�w��)�=]斏���ca}7f�}EG�q��o��ǅ�\�Szy}hD����,c0:�	=��B�.z�/~�Er�4	���&�j��+�����N�i�z��8b�%�S�����{I@��(���z��c<֌����=�^J����U���4�I:1m���hݹ9?���թ_FĒ�A:���Q��Xj>�fǦ�d٩�ix5m�J�i��&�]҆��:/+��eԲ����k�Z�j�n�W�Q[x
�N随�E���U4%q��5=?�/��0N� b
H'�d��
R��2"�b���+��5���,O�1�Z�$�����s/�n�^�����_���No���+�k�	i�������u�T�^�w�8M���#E����H������=��Ϳ�R�k�ѦmmXZf�F]�^��Lb�J����0e>u,>��.[�`�đ��E���������-�
3?"Z���k�a���c<Ꝫ����P�>v�V���NC�?S6�1��[�J>B�_/w�-I��t�ϙ2�)�AB7$PP��#�E3�m�|�s�X�W�� ��za?ԘIrF2'�FF�䌔�9�0g�3R��~Ёa���H6KZ�d�����b$K!��R�G��[b�ۥ���&YE��jK�K߇��zwD������������&q
C�|H�
nI/Hw2y~6`�o��(gȾ��u��l��9�a�i�x�8����4,ڴX��EQ���R�^�P�_LNN�UC=nnC�?=t��i�o��$�d��O�~�E�x0.s��9�a��ZQب$#��I�F�`NF�Rۜ��3�#돶�\�~����9q�O���9#3r�؀���Œ��+�t��Ip��k㞾���<���1��ˣ8����ϒ��F׳�
���a�t�lH}�Q{�eNTwդ�h�S/�AhK��i��EϽ{"�f���Yj\wē�H+2hQ�}���6$�3!Hj!�+Cv�1���Lz�t���a�n3�Ue��w����*1��3¦�`UR�$(���{��HYjs;S��5a���1�u�����ė�k����KX����6�a{HX���N�a��Gd�d� y��%��"�g���êr�7,��d��
(��������H��OݓE;ev�-4cڛ����k�[�����q�V޹�m�ێ���Њ:��!�֥���������t����`v/56�!&2akHpC����hjٽ�f�� n���
4Zd���iqӶ��&{|��R��.�Y.���m^*q٭s�qr�`�t��G���ȍ�c\c��R��������������l��Ԛu8=�� ���So~�Op�[�1���rq0���k���tg4�O����$b����1W;%Ϝ>(��ۼ�w��xn��uG|Od�{��!�����������$�������&+6S
�>��]0U�R��0�u�QNoO��c�����'s��N���f�����=Og�B�O&ĝ���*�|��~�	��ՌR�?���I.<��|
����R8�Ȓ��Ǐ��2�A.jJ���+}b���D��P�r�m�>n� ��upA�LVj3��%Qo���{�XX7qA]ɐ���Y�S�Y�卖���n6�k��>Ԣg-���l����{��U��p���z����P��$�}X;l_�n����$�#?�1_m4�{b����i4k�A?�������5f�0�3���ke'}�q_>��M�6Lz�-� �N��成���7D_�=í{%<���J$)|�<��5��2���󡛘1��i��8�t��R��M���7QpLI٭"�� �0�!`֩� ���ѐ���8DԈ?�6�I���B����eEן���7�G$�s�O�X����c�}f提�	2�!i�t.!��"i��Pw��U�� ��	+Ey8\/�VD�B��>����uL�!��{�fA������F���tA�&6�Z>~;��O� �Pb>R)����D���d���H�*��e�[�eIUec��4f���6i]$���b�,y"zs�7V����� ���5˔iw�h��dr>:�ы���s�#8d/�S�)��n��WZL~�gr���� ��"���̵����
㈝jZZ��Ĵ��G�ɩo��l�^9~���=~��A��̇+���1��KقdR*8����-:�<9�*`�̼	"3��Hb�����;1�Z*�26�9_��[D�y���6IqEP:��D����≽�K�~�8:�{uE?"O�r˥��lpX}J���8'j u��?͊��,�H�/̹ �zΝ�ĐMSm7��ߓl[�V9�G��N��\�K�Z�����rE�@�9�n�EL���<~��fo�"d��ms�����^T-�*l�$H%�Ekۅ�>
�k�	�"�l�������;H��DX�ĿiU�=O�I �̻VC�h�A�\�%�Y�)r<�w�:!�wW܆S��F���.��>y]���m<�J�@���P؃;6)fS��3�8��nx���Ű�q�m�	�i榥���?!���߁x��dO	9���~\�D��$N��Z���aIe-��B� 4��z/?�O"��3�`��N��f]��2D8����L'�2.[Ui̚ē)��_R/SPj�}L�K��N�U�'�h���.�g�"��drC�� z�hzr�O%G��$�Ά� �$lRϙ��$���#�c]L�C���H7���om���u.����F��h�r� 3n�4����~
�("�)F�"��;�{��^rժY���lU������d2�|�҉Prd
�W� f�8��~����t�CN���*��"�\-���-
�D���MW�eBy�*?�m�%�q�F�q����36U!�M�x�ӒxF�
�2yK2#�G;8)�z"��/�����1ֱJ�<�5��L�'k���֍�-�z�R��Xr�݌GEƛ���&�Il:���:NH��E_�˒�u��Ψ?�I]m���h0��N���!����Q+���l1������t�1p�a�RyZYd"^;(�_�����DO��:�W+��#�&j��?W�Q��`�&�������W����s59��&�1�-�K<&^�Z���D�
��ȷ?��if�4���m7���V�~D*�w1xMֳ/|_�0��k5��:��/DM��:���F̾�ovz�
���Ρ:]�6sU!�8�8�2赐��%<�27]�p���������1N��^M�xؕC�8�    5�: G�Ar`��?�J�dG��.=��bxr6@د�la�n3�f3�^� )��5�ƭ�/����yt���19�K5�h��F��ګ�����|��x��ӇY�.D��;?Ir	�7(!Z�:�v�F��d�#)��r�J��U��j�'>~?�M���5t%��/��倸�#V�'#�M�O��*����a��+ )�|l���K�)���#.���p���Bnزj/���t�H�:�Dѻ.|��T���T��&=��h�@������#��Ѳ�ɦ��^��M�~�d$��L5�R2#�腩!cB��;�Fi��B�2;�Y�k}Y�@���/o�I��S���(���(	����P�l$0��$��Y\�!Uٛ��֞qb��p݊[$ ��ɫ��R��+�hb��]4�D�䥄@($'�|h�+y��&Ȯ��b�,)
.�͊�n�]{�>�*vE:��� �MR��Y��c�'E����p�b�n K��T�`��5�ӵhgܑe�̽|�E2��.��r��l(=�W�T��{��~�b�$����"%}�x?���_KO��t�XVz�P���22��W!�E]��BΩxD��Z9mY��I��� ۓ�B�-�z��Zd��4����2	\F*K;�5�$��"�@�����[��߬ɛ���]��Z?H�}�|l?%G��;O	�/��*$�����?EJ�٧ejv����I8����8����k�W�Cux2�+��:h}���]��d4�$̧��D���bCe�-9�	��`^!u�
��
"6��Y%�uyp��E��H:u���)ɥE������V�I#��M��h5�5I�x�cE|ao/D#oA� �s��\�j��~"6���IQ��UKQ��UKȈ��"b�HI]�����7�N"]�����q���� �U�pq��䟳����KB�������q2�;�n����Ђ#�P/h]G �s�e�����ݍ��d��޺��pgw����?q�!���ޮS7O�4Z�����KσC[�>T�b��h��I+Vx]$�%>-w�U��u��Mx��OoD�/#�#�W�!Rh�u��.'>醦f�C>����"�Հ�xs�@>�V�T�����R]5��%Z����&���������EoH���h��xp�Z������?"w��ڠ|2Nޠ_l'I����������2������׏�L�_��^z�����:��]���D^~b"c:���TK��ֹ�����X�ƈ�ߙ�5y%��r:.�II�� U����)Z|th>��/�;��
A+6#A=�Dɕ.Q
8�K�����R»�����b4�";�_I%@��8�+g��b.��~1�SQJ���"�q���v�@d�.d$��ete���r���6+�9��*	�����d�_.?�wIVKnf#�&̼�˲�r�����2���#g�-.n�K\��:8��o.�}��}9�����P��A}�ݽ{����+�A�{n�Z(�NL
����jW�M��-�0E�p�����$�z��4��[��R^�����IV�dC��tD�\IO|ݣC�!\ݐX cr�?@�K蒌��ջ1�R�E3)Tȟ5<w'I���S	�ѫ^#ϫ&H�<~�X�Yf��VL�D���Ln��[�Rm�,��p��b?Y�\h<��,R����$�X�
� e��,_f@�[a/�S:�Jө4]�Ӎ-F���h�=%�s[�#M4�Oɜ�f�"`�N�W����E�K�L�(��8�D�TSq�dB>~{�/}��*����b�5�,�iG9���Q��ǜ��5D@��q��,��R61�]%^��rHmmgl?���aI
��2��I���5cn�ǲ��?ޜ��i���'�`��o��Pfϐ'�RlT��+㣭7~���7���.i�u�.נ�ʺ��jU���ݍ��ؾY���uv�,�t>P�x��q�3c�'�Z��P�3}D'�4&ɨ�yﱬ�OG>T�YH�����u�j��9��/�ɩ�D�J
�rR��
�a1L��9)�j�ݢ��l�~l\pT��&��obSI��N.�3� r��c֔=ge?���l�7���6D��ng�[���d������-I�J�k�ޓ��t/I�ŻN��D�i7Q�8�U&4��V�$}�'ׯ垌i��z��>e�7���a	���F�9:�Y�b��(!�t���Z�X�J�\��?�� @椡)
��n�U�"o�-o^yR�g	����Џ���Ixx[��':x�LYt�6p��wՏ��f��6��)����'��/���D
��ܽ��.<�J٫�^h����
��$����
 �B����k~�Mƕ�K�ԓ�_���j%ըwH��jW��\0漙��<�e���	Os���d~�Q|����[�FS��tAR��5�3xsbY��#"Zt�I�n�WA���ֲͬ�Z����@Mrz��5�뵣�M���t�7E4���5t|G+��N��{�}�oc6��j�/�����V�ȴ��;�%=N�)4L��s\���KlI$s�Ë�}q}o��q��2�����2�hʣ�	qx��xs,���wZ.oՍ�o/�M}��#ֺO�_rH��d�v�
�
-4$`�;�(�߇;���󝂬 ����ꆼN��p�|�3�ZL��<��.�a/H�f�cU�E�>��܊۬��/���/���+�?������|�^F�����~��.�_�#N����$Ys�;�WP	���X�,�"� �M;�d��\�O5$�{i�Mi_��>���r�ܓ�	bY�u�vO��@Cp��c���nL{#7]��;A��TBJ����)���W��D['RN��?$ �{���$�f����7�,����6�Yi�=��@2;��Yn�u�Ke��J�i�>���7���8A��dfM�=�M��
yU�5,�_�P��.��A48Yh��,P�MD1�}�=���uU�!�Qr!jǐL����-?�w?����г?��oǷ$)F��R�!���9��H�L�jv��:�!�Q�o5��=��O3�X��|���XzJ�ߒC�m��0�bm2e����ORf�X%�Y�&+�]ӱ���L�!zYiEw8eL~/�l�۱:��a<%c�F��(���,�q�Y&���V�,��?T��?%�7��d���Ia��nˈ��Z�)�oi3ު=�����7^�i8wK?|_��� ��T��;��A��W��?���;i�B�ޕ���5�`A0�G�x;b e�YC��������wռv��3v_����
�d�Q k5�L����F�$���l|/��j���2�:�E���d����_��^���ﴀ�ť㿹 I�)��i��Ś��"M���1��Ed`>�N�~������@���w8:��{�����قAtM��/�`��v��_�tn������^��=2��_�n�kt�����-�6�P���X��������?��f�>$k��|499��;�)`<�C��g/�5Q���C5IV�Ǒt���e<W_���`�]���^���Q�1B�G�����\ѝ�.dv��d��ܥ�Z�r,���+?y�IkX��Y��'3/�#g�.~G��Dk�q��m�)�$c�`0
��u-�!�
Uݖ�Q�W4��1=h�H�C��l�C �:�P�Ь��j"P|�⍥Q=}�nN�k��'D/�4�n��Diak�_ĺiϬT��e�����>� ��=:�mm�S�6��6�S?ɃE���_K�d�t�'nH�'�i��-Y��<�Y,�e`v�4$�(���K��yH,B��lp�<��#��
SsMz1`�`�ս>.K�6�L��S��\!��m��� �Ci�`����*l^R�/��i��}�U��I���[���]F�<@F'}M��nwi���d,��t�F�K:>��e�D��8�]�óx>?S�4�]b�i�Oi���'[��8t.�{w���ɾ�l�� ���ҍL�P��R#�������Rv(���2�w�dI�X�&~���0�T�=�f�:����U��;��&�maI�.��i��    �
�+�ʌL�f�@�(�4О�NR������ �H��C���)0��\�<D���:&�?�o���{+r����N�NmtU	=�uQūD���U�H~�������Oy�ֹ�ʎ_��7�}����/!�{2e��'��lh�'�Ο��j�c3q��.�Yp���Qc-1��2�ać5-*�*G�-?/w�����Tfz@���at��> ^�
�.	�LS%��}���mɍՅ�W����S�@�OQL�޿����Hp���oQa��і�]�z��O�A#|���p�.�wש�=ǂ[��q,P�K�j���w�����:N�m=�~v�;���gH���::���'����+uv����i����qHžį��/F\iǺԯlЌ�6q��\�E.4u�Uud,�sH��Y���DX
⟷���I��V�-�}��m�
����D@���&3�L����a>��<bG�t�Az<��d���Û�$7�t=�Ao��Z�*$MV ���r���j5�n��٠85���Ó�x2A:�"�3b5Ɩb����Mc׆�殺�%Tv��R���V_NN�{�B�P�W��7'[�h�AM��\���^6:���b%�T��!�4�{O�V�"�,h&QC���N�Ev֘�2HĖ)����t>cS��tz�5�+&,�8ئp.1�$����_r]�Q�+��C�g��������?c~ްݬ�(c��/ ��%\���Fx1�e�Y�K�2�N����Ԉ�0L�X�#��3PN��L$�"�ŝ�[u[gȨ�Z-��������\#�rq<�D�	f�t�j�s����v�@�2;j~�n�h�}�.X�<����bS���I� ���G��xs�?!�6�é �2�L��l�ټi��F]��$�"��;�˺{;�w����5��ֺ�$��e��!)��u	����
"�z�PǏ��2Ug�kj$�w+��c*���@V>~�h�����ǒ��$��E`*�������ka��r^p�Y�U�/֑��]:Q�Á��/$X�@L���X<��ͻ�Q��d�Fh�T�0�(�ȳ��XR\@�y�g7hn���q��s�;�S���ϩq˝f�0]�Ҩ4L���e)���C� �	��l���a�|Zq�fs��6��U
ClU��^OF�t�^8�^q(�DH�q�y;��B��gɫZYu����]���:ȕ�+шls�+j�ѹY�[�:b�FW����^R���w
1/�[q�O���bWS��+�Lˡ�4�*�MA��I,3���I%��`�09�S0���H�m�$~�4~�J�W���u_�?�3M���?JԾ1��y�NIk�~��k����}߫4L��q��{�'c��
�u'��s�|Л�F�_U��}�^���ƕ��:�~)�s6F4�0�+R� l�ذ�Q�fO:�;��V���*���Z)`�C8��2p\|t.	٘wQ��]̷ 2�|``���[��8%������q�ʅ�+
L�(����hȈÔKЌG��"�>6�Y�Ų��R3F�sS趟��{��=X���\۵r�/|Q�����~���e7k��$3�d�|Ʌ�5����s�^��N-�:���})���@f����9Vt�����VRմ��������x�Hإ��^"��<]f�&Mb[�A�_�6N;�{:_��%h����0�D�>~�6���*�mk�LfN�R������?��ג�����=-J�j�.E�b�G�qbdr�T�dY���Uוx�c c�3x��,yTd��j��)���+�s���u�{E���I%�R!�U��3w��Z�׍Ȩ����Ζ*�,B���1/2�����W�˒�H����-�
(�����H��̂����̐�A�]��㝃���٩�wt:Ḟ�K�neYV" u*ϝg^�_�G�\br��R����:fkm��mS�;
�`d������:]�f�k[���>�/�R��Ͷ�\��VVaxpN��|���M�yUZ�_�?fF�54\�I�
'!I%cî���a+��يV��gV�^4�O�\�Z���W��b�ϵ@5�����t꽥��7Xr'��P���VKd�$����iQ7uE^���x��΢u���~��N)�Be4}1I�B��h5�e2�^+�T"Gi�Gk���ª�e��e0�Xz3׫�/���_�\���n�ݔyj�q�~1}����v��"��+]��e�Y�3�diόV���M?;�r*t�C�q���%�hp-��j�FWǮ��X<z�JQk�e�B!j�W:{�TD?��_��ߔ�ߦ�u1�~�NUu!4DK�%o�[�8 ���}/��S#�T�O�L6;`�-�P�X���*�B}���L�WHla���Gd�-D��MM�mp�����#�S5ۛꦷ���e�����8���8�Q�wYSn�}�2�5ը}��̚j�>eRfM�j�0V�,��U�a��`˔�����K�0�_�,��)K�ڬ�UC8ֶ>�_�/�))m��ȯB�GJ��4��*��Fc@��6]UW��D9Je�����Z�BT�.͂�\gc˪��&��f��*���"���C����#�z5H}!�8�ĳj״X_��?��l�]M+
�"�"����]}:�@;�2p
��Սc(/g�ng;x�����#%E��T�D]�03Ӭ��h�����{~Qb�%w�`�Δ��D��8׃2˥�������ɐ��f- ��D<��˨=��(�O��*~.��:��=#���Tl0ʹƇ�˔gf�˕/5΀Im���h(ӈŅq�X�4�yF��,N�.LZ i�T��
�/�O��2�����澡��_�z���Xp�v3�wR���-u�^p��?/�˧�M���3���mH����������|
�i S�NoX�klM�@����N]fogp��o1��A��w�dɪ,i�{��g��+c5~q1�IS̗��n��l��"ㇿAW�ݝ���&�N����,(�*�jfM)lh~��ic�dU"6�K)v)��U3��]�Y*ۈs��U|!�bON(�B�K��k��ʈ�bhK���a�R��>~7C�~�mt<%z�F"�"|�	�7:˦1�QI��q�|V�յ/h1�=5�&�������?ґ��TM�teЛ���+��=�3<u��Kki��D6��i$��O��!�r�	�Օ�������qr@�Pr`���R+�N
�FD��V��~��1�������J ­�kD.���%l�j��u���,f�ͽ�~
�5G�B&�9`ղ*ݍd��u.��H0�"�I���2�{w�}�Koe3�P�d%S5�ֆ�G<��K4�j�]?~goT��$���;�a+�c&(֓����"w�R�HOU)0��fC��8�������s�&�-cK�l���f����PWA3Z��t;/e��Z#�D��]+�~"��7�y(�F��ì�[�t�[�fm�B�\�Z8(�z�e�G�fE�YJ]z���5�#�)e�&9�/�3�t61\s�4ǹ���O*]��r��f�px4��ral���m�QU���<��C��ΣyJ:HHo��c��F�jOQ����\���_[=��,�5ڊ��.��Ac*���gK��Wh Xc�j��L^0�E����D��!|�J5�]:)��������ԷY�=<���"�h>٢!s4�}K���WAa�ЅֳZd$��
"\��?`�D���zn2��^!ש�h��K�K;�a�f��ѹ::y=y1"uzr1�4��5���r�>�)z���|NY��l�����g�d�����v=ZP��I�Ql�y2��5�S�1�l�.˯����e��b���4 ۗ���H�[J����C��`�z/�k��|�EW�q>ȿ��ij�����P6��n��1��!N�3�+]�2,sJ[�u҄�����Cc��0U�����׊i�XD�^�Ԝ�]摏7���э��xŹ-�d*f�13�&��s��ϭ�ד��)ƬX�SL����ֳ�*��h:�h�jd>�t�ơj��X�h�)~�gT�8��tȕ�P�2K4�,��    wAj��LK��ꍿԘM%�T³u�;z�H6Z��Ö�)����OB�4��t���Q����+�=^,�E�A(�R����8y�a��
#��p���9�G:EԞWCP�?�rkԚ\bpm���w��$� �l���o�@'�f��;Ye��q��-�j�
�v>�9��@$�g��|�@&`��KY+�f�\�c",'#��P�X�Vq�N�����ԡ#o�r�̟���V��������&����xj�r5'�c:�.�E��ޔ��%0^��-,i��R�o��*(�r&�l�wv�G�iV�X��پ�v~�.����s��5@��`�ת��3�|JK�6K�Ȗt����$˕��t+7xA�����Z���f*\�׫H7qܡ�����=�� �E���Ψ�3�s�ͣ�R)�~��Z(?�N��ʨ�v�m3�1��r���H��jc��bM;,�z��_j०4\Z���Z�i�㜙�*x�܀���hn"��$H�8ڿ� �O�!�$�^AB8N."D*t�Ư��^�h5M��X��M��t�9�Ox���hcb������0���,�t����0��B<���w�vR�c�amk�u�������ly�ٿ���BC.KZ���X��<�w�ӭbff�W��՜z<�� +���M��\��d+�ZQ����lD�4��ɴ�p��`���N���[��=SQ�a�v��$6fIDVPl.�����-��M6�#q�l�x�2��8Xd�E�����+��� ���i4!&#i���!�����9�V��*��b�kTM���ԓ2�?��*2�ɜ�|���B_�1~���{�u�����T��i���%���h��:�2�����x�_Z�2���2ӌ4���B�[��J��u8���U��>���}Q��u�,�y$�E�ku���!���S�fZG�R�9p�ꕮkhcOӆ:
W1��vic���J{��m�~l�M�|"% ۺB�=6�xg�����mE�E4�k���!�,������ȓ��3я��GڄE\�e��5�0
0�G8xN�[����t���/�QDE��,6q(Q�Vd1�r�`YI	��K�R��<M;"a �8�ꘫ������ب�肼���9<	�2��Ň g����������L]�NN���O���R.��h��%���"/'�g{zy?��a�����Y��$,b�0ҧ���86��!~A�+�?���!.g��"�n�m=/����+ho��/`�`��8<�\@:�%3G���}�^k��׶�5&2Rc�7CX���7J��k|OԻ�m�个R\.F��CV33NC<�2fA�#����a��џF��f�QrZ�%|��Q�1Ff�Dk��"ܩ��!�թ5�:Iw��{[�|x����)�*6�}��g��g�_��es�ri�F�O��&�C�E3�L���U� s�$�\b��DN'.��^��3�5�d�ƛ�Hf��=��d��֩9�t�������e�/�Y�B3#(�UG%�n��-���E�k�x�sG�m�J����n�Q����H%���@1\��W	�.+*,��R��^��3Ф{[`,D�A`����;�<���$���%)�ԇ��*X~�n��g���y����f)S辵�!-}4��f&��E��)��0�p��S��7���%N=���	;.�
E��F��ܛ	�/B���*�f͈X8U�y�\+0$�2�u��[e�MlP'Y����|��5S���
�'BVGY/�=�C
�5����IJ&�o�D��7ze�@%|�um�t����#F��uA��Tg������_��}�S���ӝv�(�1��|����[�;�Wթ|�1�6�t(��e���c�1��`4���>�v�`�N���m�[�= �s�Q�q6L��گƇ�X��^}����6���eХ&��I$��K������C3\�&/��q�;����kMk\o� �����x�q���Z�|i�nM]$d. �%�B�0��\���Cv�"�2�x`V��Zc,LY�'�7;�����3��yJ�簨��'�Qi��-��x>!���V��p��ڙ�kQ�n����;�@[� �UL��֚�>3b������$�����.G`��Kب+F��Z�
$_Fad�`�9�4�.
�|��j<�n*��G�q������ϱ��J~1��z���
��K{��G�YJ=#��p�:ġ���)>�\1]�vdWf�U(�}��Ѣ�.҇H�n��a�{��S�q�?��������%�EbϽ� �$���G7���q�Z�%d���B�C0�5>r�;���@�?�#�\�kd�nLdv#��p4iTZ��Zu�y���ૼ\�:5fb��{oC����N����^k��Z`n*18:a���:ټ�qx��,�k���-}pq��K�b�rZ6A0r�lA:�y2��Z���V��L��%q�<~k�U�s`�P?�Z�sѬ�*]y\߱�rC��I2��z��a`���z2霗�d�y�aI˔�}�\4�v���w[�K9�PH ����D������gM��7㍳۶[t�T�j��!��N>��'�F�N���X�wdb��&��Vڦo��ZU���'��?P������F��D�~�	囌��� Y�ɇ�;Z�5���<>�����՟����A~�Zui���k�JU�D�>��"���	�I���u|<���Ξ/�ͣ�
���Ċ-�ٞ��~�����Mc����[�Y���E��:ȮӛET��-b?���\��!J�G,�_ov�V _ �������<�Qi���������%��^i������st�5���Y͛:|77��ʳ>�U���'Z,�.fMB�Эk�o:��;��y@�<mj��dB��h�ǟ�@���Ώ=P��;��<�=�T��\@n�&ľ��� �<t��-�W|��#��a'��K�"s44I�B[/�a�z�x�E��ٴ��[O^V�=a[���w��w2�J�n��\$Vc}fo^5��EX=�W���/������a����4'̹�xf�0������QB��6��M��+58;|1:W��ֻ�W,L�{dD��r�D�< ����qsHkg×�o5"�P�GY����kh��~��E���G�lr%3���P �l�d`6p�	C1�ŏ��n�O��g�@��G2�r�����>�z�,���9��Y��4Wi��4�#^z2�����Si����<�*�8�l|���0' �H�Wǚ�~O�'�,��E�i����%);[,V���g��	�+�C�
'��V`)��_�I
��{��+89ώ�3�u�����wq���P#���%1�#T<J��}D�zK�t3_�]���R��Q@M����8��s�
�4�HgP����Z� �G��R;���)�˞�Yr��4Fqj5F����j�QN�Ի���%u�@"}=�L'N��� ځ����>�#)CbޮЅz��c�ח�%{�v()[+Y�~���m�i�c9��6R���B�JǼ�L�I����Ҭc��/�	�̭�JӬQS?	��h��K������;�F����4�T��E�G����'|�x"h"�2{��0-Þ"m޹��~db)�x� jNF�4�26���D���F2՝s�:���fz4��3l��`�#,�n�EL��<~����5��D��=�lw����y/o˻>&���b��6�%��i�[�}}��n������:�.
�:�i�B>4�����
���������HF��I+G�f��\&�z���d��?�G���VQ�Ƌ5-�usk��l aMrQ$H>����T'�`3��f���A9OL��t�Y���q/z�0�e�5u��V6��:I0d�P��N�lj�=N��-��53�B�
�qw��ɮ��M�l2E�N-P�&{-C"ݧ̐��{�q-i$��݀���N�LN��S�A6�$Tq�R���v21��g�|F�[q�{�y !C�V���$5%z����	1�?R��������ZO���"nꇸ�npg�<.(A]x.    ��(�EMmT�nD�� ��Z��E����NԽT��y��CR�Xp��~kj�(�,�x�X����%/�n	���m�{?�bP�]f��A��@��a���M����d�˦l���_���L4�y��`4|�����Ӄ��������w8ѯ������t����A��ʮ��z �,�i8�����Ǒf���7~��eSw��[3& uF����)��o�g��#F�^�d�ɬ��ڍ�����D��U�S�1��U��͡/��	UTjs�#�q�z�<
�+o$�1D�%���ޞ����`t�Ⱇ!F�\ox28c\q�۩��Z�6�� /��P��.�S���-�PSY��QF�>|�����_u��ռIڞ��`�'�|2:�s'�ZA�f�Ç)_�"����M��u�ʩ萩^��!����7:9W��������2�91jLcmo	t\�F��*⭌�B!�	�7��=k��vh�H�4[$S��1�Z՝]&�`*�4��+��x�^V�`'Ojj��-.h&V7�1�;"�f4�e�>+Nͦ�ȋՔ.��$���ƓtZk{0�F����W܆vy8sc�6lX~񮞺Q-�<"��M�g˔���`mY@"��E9I����E��Z&g �i�s�Ի�#cD�ٓ����w���ڰ�Hfd�>1o��� 3��i�-=$��=��4�>�2i���85+��=m���!�<�h-�v�N��
��o6���s4�Gkꖣ4[0����X.��8�9ǽ�Iox~���ҋLF�Ӟ:S�}i���$H7.����������j'�#���!�ԙ��߭D����Z:8���D��a��'6�]pe�rd-A�z�jr�E���S���X���������P��^~�u��Ze!��>^��Mn|q��锗W4��*(��\Шk��
���*�i�Q����X'��NI	�H)�g�D���Zg�����D��ҷ�ȣd�N�F��fp=@��ys���`}/ %:z/���>����b�[&�N��,�w�۰z�*�S�_.�q/z���Ux>y~rv���/2)����+s�~/oi�j�����M���95�!����3�5���A���4U���Y�d�s���
ͅV��G�D�A��Őad1�G����@;�����l(�ל��Zt��>��BO,���Ya���*Sk��`�8�*c�����9r ު� OB�qG�v�Y�P.v�ɗ�6�*6�Q[��-O�����m4�ÂG�{��T�rlU�M����>{�9���;^tg�����INT\ъg<~����1�k�I�s,y���<a���	1��`��V�J6GY�һ��9�0�(�	L}ĔZ�����lѧ��/A$%��*HB���&.gД����ѥ%��@�غ)��ހ{Z`���J�����Z�y,PJ(ȫ����"�X:����Ƴ��ɐ�X������hHZ��wvL���hҫ4�!y�,����ao\9d�j��� �%�3���B�!��,p�7����qAg�Ҭdm�K!���!y�w�DGwR.W�3Deb�-�^�=wטO�����:&���7�ڪԞ�~m3�ߦ!���7~��'��ܟ���v���ӓ1t�����:�u&md�;�̸#]��^���gj$|Ao_$��J$����Lq�\�:��'r7������dH�+�32&���������&���@萛Hҕܚ����p��~@:�Cq[i]6a����#㊻�֛�^�Wf�H���m�'H��Y.;�UW�ɦL@,0�:]�Gm$*���ߠn�{Քx���������%�Zc�w�[w�iw ����n��| [�?�F�_U�ͽ���7�%�H�e�e�L�!T��4�;[y��u��a,��pLi���2���-�K����!BF�>e"�@S�"��xn�R�Y�:��]e�U�K���[�X���τ�n���A��]���n<�ufC�(�U��.�צ1�����`&��8�j�d��:���~�k�b�Ln��������c�1n���5YGߔ"Q�*�%i��k}:ED��%�bۈ]���uc��¥fiR@���i����V�߸C�^N�(��ſY�ސ~y2>98����K�t��"2@M�ݬ�Յ�wR��56nN�^��u�h���V��T�=�7�̌��� I	��� ��,�7{3�f�(s�'`��g9�@�1	\@�ł&"҉����x2:�r`�F�P��ж��:0��r��
Y��8f.�m�L�t�o���I3�ZE��xP&m����L�+)= B��y��O����%�Z�x������$��u%=��vZ��o:�.���J��+ٸ���ZjD,vH��gmd�}pN���Ma��^ �M�ׇ~{�@Ga���z�U�o������H�e��������s�8���^s���ǿ@������>���T5�:A�5]�,��V��n� J�?���]�o˳Bg�ٞ��%���t1���}|�Û�+�N�mP ��7�1����S��`Xq����&��"��hI��R��]꧆��B��p`���r�X× ��B �f(gݡ�4p&�8nMe�Q7�qwb	����G���[�w~2 ����s͎i<�O�;+��b���zby�=[�Ñ�M�@(��n��B$Xѿ���sp�51�і]F]:�2�M� �<t`����}�3�jp�vA��k4[��
q�s�m���1�Zإ�ϩ�:Ւ\�@�?#o�*H�n�F����L��_��
4lQ/�O�����&I���e!� ƭ�-���`1�([qZM�(`0����[�+���Jݳ��x�6�jťJ�AAW��ĤPЊ��wɁU�0m�]��2M�{�� �!W|� U�Q3FF�����"y�ږ;�ʸ[�I�h��V	�N�Z����u��#������(:�v����C��EPt]j:��2�#�T�>[5�荾����*4��Wn��v�I��`���Ɠ�~o�س��Eo8�x׏<�1����dP=�WG�U�����[�����v�5�㛳]��/χU�V%�D�xjp}^Ov������QA�	�I&D�d�gNfilD������;��ɇ�A_Mo���+����-��W��#��HH��Q2�E���Sc����X�������W�OA����▙��(��D�b��(W�d�R�˖Z���6��Ku/C]E=Y�w�s{�q�E�pt.W�a���t�5��|,o�Rm�I��i��D��hϒ��`�ѹz�������R���,[�[�Z�M�����z�������=��}q�\lԞ�ߎ{�4��<Y�E��*��~>�݋�᰷��z�n/T���O�b_z�Z,��"��NW��C�c�цћ�c�Ϥ٤���k20�ѿBR�c��c��؛&\W�����]�BIF��:�T��]�D�AA��4�� �
3�u'���W���r��Y���l�+��*��й�Tb!$�c��!ܧ�����0�ŷ�%ދH2i�lW�=^qv�_pf!`I7�d�T%�b�@�jK�(ƻ!���T(s���9�?W�l�#X^/�+/��`�O�v���#�A?ƪS���4��	�~�tC�D�[�� !�x��Lߴ�]�m
��ဓt���%��wJ�S�*�Q�ۑ]l�Ђ���eԛNQ�🅕��D&��x�&'�������z_�z/{����l#	Foj�g~�J�:N�;�~�/�������L�6 �9��x��=\�3Č�,i� ,��4A�N�t.=�LF�
?��i��ͧ��u!	s=��I��jz�x�i�
U�7喇m���M,*�
hn�)�+�pF˭@��ބ1C�\'�D�Ѩ:3܉���.w@�E.��d9�м�� 1)sS���Y��rT5�N�h�*�{�[�bp�w�Sϰ�U��5gs�V9z�~;��HW7(��w����B�\�!

ٖ ���k��M��}@��<�ez�V#����z�Y����Y�X3>u�[ݑԺ����-ї���.�讀|���9M X  E.ꙿg.�o~<r��[Э��7gY߮��֒��Y�Dn�1x��IG�5���s�ZSA²����ܻ5���_�Q����_�s��T��-#ڶ�d�Kf�FM���+e�� ��+<f���f?J�X'mZ�;���j	�dBtݨ�q�Ӡ�H�X�x�"��\����'@�Kj9�0�b��?j������pgDv���o�J�0��Sx;� �wmCĠh�����i0�7^���pN���u�����`��n�����i�4WAٙ�>s�s�`A�;�ꪯ=��m��n@��ח�v\�Kv=^p4�F��ۮU��4�����!^c[j�`�ҫ�ѠYj�E�<G|�`�v���x�<�!�%¥�w�q�CQsf�<����0Z&?@��.�WNG��w.�8�IE�YiVZ�A�c9#�Y�oI��k������K�(>`j:�M\i;��ot��	h��%�$�s�!��B���i7��4�e��5efc̳p	4��qԅ�C

qy���s!KŖ�&�<�G�SIxi2�_�jaR̃f���D�{7äR���ΚcW^\�f���=�ț�M&�3�q�^^��y~�K��
հ��@����d�.��6 ��1��(��@`b���깭R|�~��*�S���Y'�:�Q��"��x�A��p��ZR�f#oS-�hp�ZE\�}�	Χz�����~�������(sA��0oǷ1��-��$rF��D���3hrqIա�,w�C:D9��j��:)����.�-�&"�����cZ����l@���~��/<�$YE��� ]���`�;�� �ѩ�=��}�	��zzd��z�l�y|2�N{j48=����t�������u����V��[~B�#��˓�2>��k5��+Z�X�uL�ױ��(.�!���`�u^�!"W��UE�`=x28�m���}C�	8ܸ7�_ 9��L D&�<:dW�C����)��ԥ�-�M�K���O=��I��.X��t,{R���r=�7՘y�%ڋ�9S��}V��׉q�c羣m�qv��㿓1�zʩ5:�n��Xܾ��8m�	1
a��
E���dυ��p1eb�J%����V�(ڥ݇���C�o��� t2�G�?���{�b0&�i�ql��@p�D4�[��	U?��nV~e�S��
��Z�����<�k4�M\�%�ߌl]��Y�dI ~7�3�8瓽XC�d+KI�S9��'~��:�8<�!����/}�x
I1�Og#v����`M����C��D2؀���Er)>��0�(�|���̜�T���V�g}��1�G��`�P�N^�{��"�&f��0�:�%�AWnHN��m����A�����x�]%�+]c�*�pm���3�T?Fl��8�$����Aq�VG�����R%"��!�&���B�ojO��ɹӽ8���B�i�k���A�����7�@F����)�C{"��%-Z���
{~πH9z�g����^C�R:���a'V\��xb���w|(��'`;���R�ן�uT+���f�� ����l7I	#�� �2�b	<'�m�q��l`��A�ːu�����X}f�zaݗ�<�Y�!D���兟W�8w?ʰ��dJ���F���b�HxFTs3443�W�耔�LCR.�o�^�C?���Iox���a�t��cV2k>�Er��bQl��$[���^��9Pf� ���)B�l`skA*=��_�m.1��tg苚}��^4�@ʴ��ssě�t�b�����k���M�`j�����{�&G/��������~�~9�VM�s6}=bД��+��]-��Ի�{�F�Ls��y ��ef�u�2=���돗%��}�P���= ��$�L+���̞��PT��X����.a�7�C��oP~� uO�i������H�_�&/F�QڻW�G�?��s��?Uo&@�>�˦}d��n7���\F��ds>k��v.�
���_ �x��1,+IQ#q?�����N�F`Lƚ{
5\DfR?1�D׃|"��ɍ���C(�v����� �O�1Sk�:��,r��6.��<3���r(;�#e�W:�G��eNM0`�:?ۘ��f��9��>���4uu�������Co�(x�F��h��qjyʱV�d&]��A�7�ͤ� R�ť�t��� ,�F-V!�I�8s� ��@���77^`��=Rw�l�v=���*��e;i7\�i�LD�!2ä )�2)nb���+�݌���UTG nt�W:�5ʒv�@���ԏ��TB��|y����ͼ��f�f`gY�.	+,s&{�)�\LO�b6����D��p�GY�!�2AS�\�.xS���~L:xK]%��=b�6�)av��~dS���}L5��y�y��:����]_�.����7�NPX����$�f}�$t��6	����\O��de�,5Jz�K�� ����
]��uE�nw7�;m��K}*L�7����� �J�������)��04���@����soz��9�T�Q�����h�m�����	XȀ�.a� S]�0k�0����9�cܓ~_���ZĎ��H�LQ�%EM�&��G/j�K���m�"�'��k�#�Z��`_W�v�Sū�@[�f#��0�#p�j�����.P��m�7G`N�=�Y���dͺ\O�+Pu����i�z��rڭ���  �kq}%˯i<}��x}}QК�Y�tÙ��vN�(:s\n�s�ز���~���Ψ봲3P��4�q�n�i�	N�d�5kJ*��?�C�5�j4�9�tQ#/�$E��M�3��	P�H�X��jG�G���Ʊ��?��R]FmbV]��q'vjJ'��Y�н٪��R��-�"W�Sιd�2��}�&�=�w�[��Kj��������h�d	�|��F ��ȩ�ԔΚM٤�C���s�B�*VLW[r�����Qn�G��ב��]�� �g���$Y�F��O��*�,H���w˕����O���񥮷��$`��8Z	�j��}��9���TU��+��9m	��xp������r�0\�ܦL;��;����1�:�^�O��������w(X�/���X�F}�v��|^�!��Gmd��/�X
��Dڑ��4l��\�����.�8�4������}.�g�k°�"FK�<zE��H4���JI�bDW����
�,{>Q���&P?�@i~�@i}�@i�h����^���������1��Y+�<������26DF�"t���b�ތl?��h� �0F�*���Z�3乵ʄl2�c��
Q�SV�I|���$� qhg�A��e ��})���&Q�,b�&{r?Ô�pVI�h���*�1��R���[�,�jP6����%�X�xAGyR}����1�f�pdC��#�_���3���8�5	y��4��6�d�����BD��.��x�X�)}'�;�OwFb���q�F��{D��1���f�7�N�rv��"���?@;��)�(G��SW���{\ݶX�4��!7Gҕï�_-�p+�{PJ�qb��h�qMf����6���� X|Pw~��ez�^�٬���Y�����ٳ��Ц�      I   _   x�s�L�L�I-ITHIU*-I�4�rB���+I<�1��I<�()1/�Ә+9�89��ӄ+�41�$��Ӕ�,���4�(3?>#?7�(�ӌ+F��� ��"�      K   i   x���=� @�=�L`� .�BD�?�������-�����(����&3�C�4��X��o�
�k�!m1�����}���8ʚ:�HD���XyG�b��T7�      M   S   x�3��J-.�LNT p&%Z&)[&�Z����������Ҍ��� �@�р�oddq�1gpIjYj	.��	�0�c���� �<?      O   -   x�+-.M,��W�%�,�4�JL����,.)JL�/��EF\1z\\\ ��!%      Q      x������ � �      T      x������ � �      V      x������ � �      W      x������ � �     