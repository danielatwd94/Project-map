PGDMP                         x           buc    12.4    12.3     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16899    buc    DATABASE     �   CREATE DATABASE buc WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1255' LC_CTYPE = 'English_United States.1255';
    DROP DATABASE buc;
                postgres    false                       0    0    DATABASE buc    COMMENT     -   COMMENT ON DATABASE buc IS 'best used cars';
                   postgres    false    2828            �            1259    16900    brands    TABLE     W   CREATE TABLE public.brands (
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
    public          postgres    false    202   
                 0    16908    cars 
   TABLE DATA           R   COPY public.cars (id, brand, year, description, image, price, milage) FROM stdin;
    public          postgres    false    203   �
       �
           2606    16907    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    202            �
           2606    16915    cars cars_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cars DROP CONSTRAINT cars_pkey;
       public            postgres    false    203               a   x�3��M�JI�2�ɯ�/I�2�t��2����..OLO��2���t�2���,�KI��2�H-MO�/��t�/J���/H��24�t,M������ i7         �  x�]V�r9<7�7�DP
>DQ:j޵��	{_�n4C4��E���7���K&�Д��A��BUVfV��u�YmVգ3�&�l�����IoT�?.�a��ר���4I�Fi�L�aLnR��C?8�:�(��U�oӶ����?9�ƺF e=#'Յ��u�٤���)]W�Z��߯����"�ժ�Ǉ���-6&k������У6�!U���;u��㫬�6w��Ԧ1>_+��t�B��ǘ�͈����k���#��=�F�5 @����٫6���[�4j������4!�Tಙ9��JR�5^}�A����H��N��=[s�\�U}�M�s�:7AcßŮ�!"����+�V}8�jiML��GvY��ol]>wxझ��!��jg�JR��`�\Jg&��Kt��;�7�g�Ry�!6rû���� �:��<�G"��>�5��oʓ3�8x&�r.�i0>YK&����:��;m��|6��Sh32j�R�;[w��$<?�Ш?LЇ�A��B}Bg�1�f��i)ċ�9`�����:D(� �Fz�=8�tRg���>�^��v��'�.�)��"V��-�7�����MV�kO>�}B���j���ϬPG�#��m��������j��W���]��J�&�P[��km�jmd(g"�6�(�V��\h�O� �N�G��'X%hK��q�<��<FS�g	#��px}�ݮ��Ou�@j{���k�}~KP�ó�*�Qeۃ(���KjoG��i�:���T���a�2.dG��J�M��WYm}4��e<0�:m#?��/�;�GS)"�6��g��׽zH� '�٠7�+��ڣ7�u���$
PȊ�ޜ��� U|u��?�i��� ��t4��I(�i�68Hx������ҚF�����\�o)Ǒ/kiD'�[K�*��Ol
�>�����#1�M�#�:S��+Fæk�E���e��*.$!���4
�Y����V�~�_ ���P���o����
utq���+x)tҋ��Ѐ�2a������� ���CP���7?8��:p��ȏȖȠ�܉O�N�#R���Ԛ��=m ^gej��cx�=��:�I�&M�	��"g�����S�kf?����tf
�:���i�5ă�jK7������ S��3�h��� v+�����_�W�8��=�šh��O	��?x��'C���aOx�. G̴eI��:jXF;�/��8����Z`�������P��qQ��O��y��b�Y�'�f�Lp	Q07x����Zz/h�jB��^���A�0ߢ���j8�������"��Z��� �����aN�/���$_��8G4���zԏ�Jug ��G�)B�<�~�<�qy�.-��&��2je"pխ�w[�ؽ����V�Gc�4"[=��|i����p3= �̎�ΊDAM�0�ɶսm�6иi���Z�X�l��<!�4h(NF)�2�������\�)�8�B�\�G	�Iw�fg�o�ŀ�l���`&�<}�BK�)�p�%���P�+c2g�B|X������ݍ@'��,.&����ӓ�!�T ��h���I��9=����a*�_O�A�sH�@�=Ete*�Ͻf������8�$�+k��[×����~�aD�/�˒��i//�'���*��`ErE�#�ja��1��Qv���2���V���fw��#�����o(\_�Z9��C��8b�Au��QO�Q.l�Jh�(�_��!��#���R��^��7\}�k��_���ߗ�k?     