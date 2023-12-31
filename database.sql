PGDMP                         {            petcare    15.3    15.3 *    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            <           1262    16685    petcare    DATABASE        CREATE DATABASE petcare WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE petcare;
                postgres    false            �            1259    16686    benhan    TABLE     �   CREATE TABLE public.benhan (
    record_id integer NOT NULL,
    pet_id integer,
    trieuchung text,
    chuandoan text,
    nhacnho text
);
    DROP TABLE public.benhan;
       public         heap    postgres    false            �            1259    16691    benhan_record_id_seq    SEQUENCE     �   CREATE SEQUENCE public.benhan_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.benhan_record_id_seq;
       public          postgres    false    214            =           0    0    benhan_record_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.benhan_record_id_seq OWNED BY public.benhan.record_id;
          public          postgres    false    215            �            1259    16692    dichvuvs    TABLE     �   CREATE TABLE public.dichvuvs (
    loai_dv character varying(255) NOT NULL,
    day date NOT NULL,
    time_slot integer NOT NULL,
    state character varying(10),
    pet_id integer,
    giatien integer
);
    DROP TABLE public.dichvuvs;
       public         heap    postgres    false            �            1259    16695    donthuoc    TABLE     �   CREATE TABLE public.donthuoc (
    record_id integer NOT NULL,
    thuoc_id integer NOT NULL,
    soluong integer,
    "time" date
);
    DROP TABLE public.donthuoc;
       public         heap    postgres    false            �            1259    16698    lichkham    TABLE     �   CREATE TABLE public.lichkham (
    state character varying(255),
    day date NOT NULL,
    time_slot integer NOT NULL,
    pet_id integer
);
    DROP TABLE public.lichkham;
       public         heap    postgres    false            �            1259    16701    lodging    TABLE     U   CREATE TABLE public.lodging (
    lodging_id integer NOT NULL,
    status integer
);
    DROP TABLE public.lodging;
       public         heap    postgres    false            �            1259    16704    pet    TABLE     �   CREATE TABLE public.pet (
    pet_id integer NOT NULL,
    username character varying(255),
    category character varying(255),
    age integer,
    gender character varying(10),
    color character varying(255),
    name character varying(255)
);
    DROP TABLE public.pet;
       public         heap    postgres    false            �            1259    16709    set_lodging    TABLE     �   CREATE TABLE public.set_lodging (
    lodging_id integer,
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    pet_id integer
);
    DROP TABLE public.set_lodging;
       public         heap    postgres    false            �            1259    16712    thuoc    TABLE     �   CREATE TABLE public.thuoc (
    thuoc_id integer NOT NULL,
    ten_thuoc character varying(255),
    nhom_thuoc character varying(255),
    soluong integer,
    nhasx character varying(255),
    hsd date,
    price integer
);
    DROP TABLE public.thuoc;
       public         heap    postgres    false            �            1259    16717    user    TABLE       CREATE TABLE public."user" (
    username character varying(255) NOT NULL,
    pass character varying(255),
    email character varying(255),
    hoten character varying(255),
    birthday date,
    gender character varying(10),
    role integer DEFAULT 0
);
    DROP TABLE public."user";
       public         heap    postgres    false            �           2604    16723    benhan record_id    DEFAULT     t   ALTER TABLE ONLY public.benhan ALTER COLUMN record_id SET DEFAULT nextval('public.benhan_record_id_seq'::regclass);
 ?   ALTER TABLE public.benhan ALTER COLUMN record_id DROP DEFAULT;
       public          postgres    false    215    214            -          0    16686    benhan 
   TABLE DATA           S   COPY public.benhan (record_id, pet_id, trieuchung, chuandoan, nhacnho) FROM stdin;
    public          postgres    false    214   �1       /          0    16692    dichvuvs 
   TABLE DATA           S   COPY public.dichvuvs (loai_dv, day, time_slot, state, pet_id, giatien) FROM stdin;
    public          postgres    false    216   ]2       0          0    16695    donthuoc 
   TABLE DATA           H   COPY public.donthuoc (record_id, thuoc_id, soluong, "time") FROM stdin;
    public          postgres    false    217   �2       1          0    16698    lichkham 
   TABLE DATA           A   COPY public.lichkham (state, day, time_slot, pet_id) FROM stdin;
    public          postgres    false    218   3       2          0    16701    lodging 
   TABLE DATA           5   COPY public.lodging (lodging_id, status) FROM stdin;
    public          postgres    false    219   q3       3          0    16704    pet 
   TABLE DATA           S   COPY public.pet (pet_id, username, category, age, gender, color, name) FROM stdin;
    public          postgres    false    220   �3       4          0    16709    set_lodging 
   TABLE DATA           O   COPY public.set_lodging (lodging_id, start_time, end_time, pet_id) FROM stdin;
    public          postgres    false    221   �4       5          0    16712    thuoc 
   TABLE DATA           \   COPY public.thuoc (thuoc_id, ten_thuoc, nhom_thuoc, soluong, nhasx, hsd, price) FROM stdin;
    public          postgres    false    222   �4       6          0    16717    user 
   TABLE DATA           V   COPY public."user" (username, pass, email, hoten, birthday, gender, role) FROM stdin;
    public          postgres    false    223   �5       >           0    0    benhan_record_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.benhan_record_id_seq', 2, true);
          public          postgres    false    215            �           2606    16725    benhan benhan_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.benhan
    ADD CONSTRAINT benhan_pkey PRIMARY KEY (record_id);
 <   ALTER TABLE ONLY public.benhan DROP CONSTRAINT benhan_pkey;
       public            postgres    false    214            �           2606    16727    dichvuvs dichvuvs_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.dichvuvs
    ADD CONSTRAINT dichvuvs_pkey PRIMARY KEY (loai_dv, day, time_slot);
 @   ALTER TABLE ONLY public.dichvuvs DROP CONSTRAINT dichvuvs_pkey;
       public            postgres    false    216    216    216            �           2606    16729    donthuoc donthuoc_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.donthuoc
    ADD CONSTRAINT donthuoc_pkey PRIMARY KEY (record_id, thuoc_id);
 @   ALTER TABLE ONLY public.donthuoc DROP CONSTRAINT donthuoc_pkey;
       public            postgres    false    217    217            �           2606    16731    lodging lodging_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.lodging
    ADD CONSTRAINT lodging_pkey PRIMARY KEY (lodging_id);
 >   ALTER TABLE ONLY public.lodging DROP CONSTRAINT lodging_pkey;
       public            postgres    false    219            �           2606    16733    pet pet_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pet
    ADD CONSTRAINT pet_pkey PRIMARY KEY (pet_id);
 6   ALTER TABLE ONLY public.pet DROP CONSTRAINT pet_pkey;
       public            postgres    false    220            �           2606    16735    lichkham pk_lichkham 
   CONSTRAINT     ^   ALTER TABLE ONLY public.lichkham
    ADD CONSTRAINT pk_lichkham PRIMARY KEY (day, time_slot);
 >   ALTER TABLE ONLY public.lichkham DROP CONSTRAINT pk_lichkham;
       public            postgres    false    218    218            �           2606    16737    thuoc thuoc_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.thuoc
    ADD CONSTRAINT thuoc_pkey PRIMARY KEY (thuoc_id);
 :   ALTER TABLE ONLY public.thuoc DROP CONSTRAINT thuoc_pkey;
       public            postgres    false    222            �           2606    16739    user user_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (username);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    223            �           2606    16740    benhan benhan_pet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.benhan
    ADD CONSTRAINT benhan_pet_id_fkey FOREIGN KEY (pet_id) REFERENCES public.pet(pet_id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.benhan DROP CONSTRAINT benhan_pet_id_fkey;
       public          postgres    false    3218    220    214            �           2606    16745    dichvuvs dichvuvs_pet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dichvuvs
    ADD CONSTRAINT dichvuvs_pet_id_fkey FOREIGN KEY (pet_id) REFERENCES public.pet(pet_id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.dichvuvs DROP CONSTRAINT dichvuvs_pet_id_fkey;
       public          postgres    false    220    216    3218            �           2606    16750     donthuoc donthuoc_record_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.donthuoc
    ADD CONSTRAINT donthuoc_record_id_fkey FOREIGN KEY (record_id) REFERENCES public.benhan(record_id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.donthuoc DROP CONSTRAINT donthuoc_record_id_fkey;
       public          postgres    false    3208    214    217            �           2606    16755    donthuoc donthuoc_thuoc_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.donthuoc
    ADD CONSTRAINT donthuoc_thuoc_id_fkey FOREIGN KEY (thuoc_id) REFERENCES public.thuoc(thuoc_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.donthuoc DROP CONSTRAINT donthuoc_thuoc_id_fkey;
       public          postgres    false    217    3220    222            �           2606    16760    lichkham fk_pet_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lichkham
    ADD CONSTRAINT fk_pet_id FOREIGN KEY (pet_id) REFERENCES public.pet(pet_id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.lichkham DROP CONSTRAINT fk_pet_id;
       public          postgres    false    218    3218    220            �           2606    16765    pet pet_username_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pet
    ADD CONSTRAINT pet_username_fkey FOREIGN KEY (username) REFERENCES public."user"(username) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.pet DROP CONSTRAINT pet_username_fkey;
       public          postgres    false    3222    223    220            �           2606    16770 '   set_lodging set_lodging_lodging_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.set_lodging
    ADD CONSTRAINT set_lodging_lodging_id_fkey FOREIGN KEY (lodging_id) REFERENCES public.lodging(lodging_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.set_lodging DROP CONSTRAINT set_lodging_lodging_id_fkey;
       public          postgres    false    219    221    3216            �           2606    16775 #   set_lodging set_lodging_pet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.set_lodging
    ADD CONSTRAINT set_lodging_pet_id_fkey FOREIGN KEY (pet_id) REFERENCES public.pet(pet_id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.set_lodging DROP CONSTRAINT set_lodging_pet_id_fkey;
       public          postgres    false    220    3218    221            -   w   x�3�4�,.��ML�P �Tδ���������̼tΐ��T��Ԕ��̼�b.NST���9)�,9-9�rJ��p�5�* �=�F�@�OC���1'R�'�e
g��X1z\\\ ��[C      /   �   x�u�1�0����� U��v�'`I*VQ�R�c��]�|��.D�<��*�T��"=�`c�;�1��|�$��U�Se�th��Vu
�O�,�2�ק�������ʗZ���>o���s��v��Q&�7'�6�      0      x������ � �      1   R   x��4202�50�54�44�4����p�rZ�sE-P��9�8M�r��N�P��8�0EҌ�����N#��z\\\ �+R      2   &   x�3�4�2bc ��4� bs 6�M���c���� g��      3      x�m�An�0E�3����qDۦ��D�t��MF`��!8�ܪ���7u��������uSn!���^j�3kmN�nr�H�%/fo��Re�ΔH#H������pz�����?ܧo���HSH�
c�qiLuF��8
Z�̹�O=�^�H�Q�07~6�
:�J�R�!����蚁u�s�l�B�{�>+p<P3�Fk��:pmQ��9rM�-���%��ާ�vʲ��E���m*�"
�����%i�p�?�z      4   1   x�3�4202�50"Cc+ ���4�2�KY*�#����b���� J�
�      5   �   x�e�=�@�z�^`���wK@h�Haaab�� K���^CKN�M"	��_f�	ͩB�sS����=aI���q�B1�L�M{A�נIأ�QXX��a�Ő�0��������d��[�T>s����jͼ_Ҥ�~٧;��Aㄾ4	����V1��&K��|����a�� �KBK      6   0  x�mRKn�0\?������U�T�.HW�8`��`"��z����M�0N▊�5�����QI]����Gq��lSm���V�Ӫ�Z�k�!u�3&(���iH�!�B+N �L��8�<���]yك��s%iO�Ѷ+�C~�)�?���r �)E5C�����N�M"��J\��g�i���ޠ,���f|Y_u���̍��λ�b9�7���i^��r�h�����܈vl��ӿ"�
�'u��}�\T���=�Ρ�0�Ȉ�-1�My��~sڇɏzi����Z���ѝ�4dќ��Ê�`R�)     