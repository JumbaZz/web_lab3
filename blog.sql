PGDMP         ;        
        x            blog    9.6.12    12.2     U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    123043    blog    DATABASE     �   CREATE DATABASE blog WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE blog;
                postgres    false            �            1259    123044    migration_versions    TABLE     �   CREATE TABLE public.migration_versions (
    version character varying(14) NOT NULL,
    executed_at timestamp(0) without time zone NOT NULL
);
 &   DROP TABLE public.migration_versions;
       public            postgres    false            Y           0    0 %   COLUMN migration_versions.executed_at    COMMENT     [   COMMENT ON COLUMN public.migration_versions.executed_at IS '(DC2Type:datetime_immutable)';
          public          postgres    false    185            �            1259    123051    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    email character varying(180) NOT NULL,
    roles json NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public."user";
       public            postgres    false            �            1259    123049    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false            P          0    123044    migration_versions 
   TABLE DATA           B   COPY public.migration_versions (version, executed_at) FROM stdin;
    public          postgres    false    185   �       R          0    123051    user 
   TABLE DATA           <   COPY public."user" (id, email, roles, password) FROM stdin;
    public          postgres    false    187   5       Z           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 2, true);
          public          postgres    false    186            �           2606    123048 *   migration_versions migration_versions_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.migration_versions
    ADD CONSTRAINT migration_versions_pkey PRIMARY KEY (version);
 T   ALTER TABLE ONLY public.migration_versions DROP CONSTRAINT migration_versions_pkey;
       public            postgres    false    185            �           2606    123058    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    187            �           1259    123059    uniq_8d93d649e7927c74    INDEX     P   CREATE UNIQUE INDEX uniq_8d93d649e7927c74 ON public."user" USING btree (email);
 )   DROP INDEX public.uniq_8d93d649e7927c74;
       public            postgres    false    187            P   <   x�32020034041101�4ru�tM�L�̸�JL�ѕ�Z[r��qqq ��      R   �   x����n�0 ��3}ӛ�HgA$:�9iA$��,@G�EDP��,{�]���k
S[Y�t�ER�L
壷���=����R`RsyD����PX:�O���F��Ҡq4��Ҟ�l�f�wq�(�Xl…]���n��1$rЬ��m4��?\�4?�f򛿁Q�w~�ɉ��rs[qo�����O��~���|赴2�и4װ����P�K	>U �'�O      