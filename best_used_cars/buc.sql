PGDMP                          x           buc    12.4    12.3 
    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16899    buc    DATABASE     �   CREATE DATABASE buc WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1255' LC_CTYPE = 'English_United States.1255';
    DROP DATABASE buc;
                postgres    false            �            1259    16900    brands    TABLE     W   CREATE TABLE public.brands (
    id bigint NOT NULL,
    name character varying(50)
);
    DROP TABLE public.brands;
       public         heap    postgres    false            �            1259    16908    cars    TABLE     �   CREATE TABLE public.cars (
    id bigint NOT NULL,
    brand bigint,
    year integer,
    description character varying(1000),
    image boolean,
    price integer,
    milage integer
);
    DROP TABLE public.cars;
       public         heap    postgres    false                      0    16900    brands 
   TABLE DATA           *   COPY public.brands (id, name) FROM stdin;
    public          postgres    false    202   _	                 0    16908    cars 
   TABLE DATA           R   COPY public.cars (id, brand, year, description, image, price, milage) FROM stdin;
    public          postgres    false    203   �	       �
           2606    16907    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    202            �
           2606    16915    cars cars_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cars DROP CONSTRAINT cars_pkey;
       public            postgres    false    203               a   x�3��M�JI�2�ɯ�/I�2�t��2����..OLO��2���t�2���,�KI��2�H-MO�/��t�/J���/H��24�t,M������ i7         �  x�]V�r�<S_Q�ٍh)����(+���x;�����(6�4 JC���=��
l��:Hb7Q���ʪM�i����y��̉
�}�>gr�b`*�����v�m���d(srq�~&Ӷq��=[2�_�8���#W�����<�-�9Sζ1�����|Քfs�n�[E��o>�`=g:&6�J�2"v�|�5<u4ǉ�;�\�1{��f�<��J��]�/�{��+��$i�f�^����^_�-����{�P�L�.gC&�[Q�:�:�6
y6@�I` �8̫%i�3#�)3x,/���F.)z�E㔘�s[�k���q�-{��2e`!7���i�i8� hJo�I��}6��#���q�7�?�������g3�"�	���$=�0+	K�������{6�뚍��(}��N��n���w���XF���_���N�1�gvB�P�=���UA�
h*�$[��I��X��)��1E;�k��ˆ�Ĺ��,o�@_t
�%P�"�'�ɦ8^Z��Ƙr�Jrx�M�?C9�R @�z3f����|������S2��,bV-o��b�\#�F��[�}:�^�#�@W��s�Ab����Kh3�1����zV2�j���j�>����[KT��kLVo������a�M��Gه("Gs��X����̞�p�E���)Oy� � G(�(�!�+����h=Ǯ6��^z���"�c����Q�9�zg�*#�q���h&�Q1��ń��PS�& ���v81�+���"��7؃iO4����HG�>)]�Sa����${���Ɓwn!ۨ6%���SI&��Tl��z	�EtdtR�]W������,��ً>nU��G�w�ԟ�W]�	�9��J��J,���"G,gw"M�����%(����Y���*K���&3�i���#�/���C�z�7�X���f�У]��QCH:9Q�I�i�tH��͕����Y�"l���x�'�+�9zg�6;i�����67B�]�T��1�����ZT�T��FA�T��Rښ�>}����ˉ�A �x���8�d��U�N�)R���^�[� jK�-�T��F���d!TEtpG*n@�=෥��	>%�j�	B�����̢O�c����Њ�Ӭ�|�
B�I ɠ9Q ��dI���%y0����=����ש��zȮ���Jm�"��V��y*��K����Z�CJ�[7��;����b��G-rV	������XQ��Zkr�wj�C�=��\�\�$/-������"Ğ��-E�'ռ��Q86�I����M#t]��(��plX�q5D�EM��$%D�����v'�_k��K�Cs�O���~ȲK�`AI���`%�q��ZY�s=�Vk���r�2\8�\�x���H��ɰ��{��Ώ>��/���Q���T�R�j��{u��j���̘��o��Qo�V���掺2�<�*�N�E�l�����b�	�7��ޤ��8�7�u�%&1�6Mpnd�j*�Ӆ͵�s@���&^]m�;J>;���!�V<~��n@ $��y�>�!;����?Tf�!/�k ��#�{Yf�0��j]�����t6a�jj���c��í�3�ye\"��K�M���E�~����e
A�d�b�R|�p��M�v�xA�(�AZ
�Zx�ׁ�y��f!�۪������y�e���M>��ow�#��$㞭	s�׋� P{-�~������j�     