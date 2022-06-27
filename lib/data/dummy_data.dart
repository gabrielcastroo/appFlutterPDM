import 'package:aider/models/category.dart';
import 'package:aider/models/institutes.dart';
import 'package:flutter/material.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'c1', 
    title: 'Entidade beneficente',
    color: Colors.purple
    ),

  Category(
    id: 'c2', 
    title: 'Institutos',
    color: Colors.deepOrange
    ),

  Category(
    id: 'c3', 
    title: 'Fundações',
    color: Colors.amber
    ),

  Category(
    id: 'c4', 
    title: 'Organizações não governamentais',
    color: Colors.lightBlue
    )
];

const DUMMY_INSTITUTES = [
  Institutes(
    id: '1', 
    categories: ['c1','c2'], 
    localState: 'São Paulo-SP',
    title: 'Casa do Zezinho', 
    imageUrl: 'https://www.hypeness.com.br/1/2018/02/EDIT_casa-do-zezinho-02.jpg', 
    purposeInstitute: ['Desenvolvimento Infantil'], 
    instituteLink: 'https://casadozezinho.org.br/', 
    description: 'Localizada na Zona Sul de São Paulo, a Casa do Zezinho é um espaço de oportunidades de desenvolvimento de crianças e jovens em situação de vulnerabilidade social. Trabalhando hoje com 900 “Zezinhos”, o projeto basicamente vislumbra mudar a vida desses jovens – e, assim, o mundo – através da educação, arte e cultura.'
  ),
  Institutes(
    id: '2', 
    categories: ['c1','c2'], 
    title: 'Instituto Muda Brasil (IMBRA)', 
    localState: 'São Paulo-SP',
    imageUrl: 'https://www.hypeness.com.br/1/2018/02/EDIT_Muda.jpg', 
    purposeInstitute: ['inclusão social','Ações de desenvolvimento comunitário'], 
    instituteLink: 'http://imbra.org.br/', 
    description: 'O foco do Instituto Muda Brasil é a inclusão social através de práticas socioeducativas, empreendedorismo e ações de desenvolvimento comunitário. Trabalhando com escolas de formação, cursos de capacitação, treinamento de equipes, lideranças ou parcerias sociais, o trabalho do IMBRA visa desenvolver local e globalmente as comunidades onde atua – e, através dessas práticas, promover o desenvolvimento integral de jovens em situação de vulnerabilidade social.'
  ),
  Institutes(
    id: '3', 
    categories: ['c1','c2'], 
    title: 'Instituto Verter', 
    localState: 'São Paulo-SP',
    imageUrl: 'https://www.hypeness.com.br/1/2018/02/EDIT_VERTER.jpg', 
    purposeInstitute: ['Responsabilidade social','Ações de desenvolvimento comunitário'], 
    instituteLink: 'http://institutoverter.com.br/', 
    description: 'Para alcançar nossos objetivos, capacitamos profissionais para atuar, desenvolver assistência e pesquisas nas áreas da promoção da saúde visual com responsabilidade social, em conjunto com um grande programa de voluntariado.'
  ),
  Institutes(
    id: '4', 
    categories: ['c1','c2'],
    localState: 'São Paulo-SP', 
    title: 'Projeto Guri', 
    imageUrl: 'https://www.hypeness.com.br/1/2018/02/EDIT_projeto_gurig.jpg', 
    purposeInstitute: ['inclusão Social',' Transformação social através da música'], 
    instituteLink: 'http://www.projetoguri.org.br/', 
    description: 'Promovendo a inclusão e a transformação social através da música, o Projeto Guri, em São Paulo, é considerado o maior programa sociocultural brasileiro – oferecendo, durante o contraturno escolar, cursos diversos em música, como iniciação musical, luteria, canto coral, tecnologia em música, sopros, instrumentos diversos e muito mais, para crianças e adolescentes. São mais de 49 mil alunos atendidos por ano, em 400 polos diferentes.'
  ),
  Institutes(
    id: '5', 
    categories: ['c1','c2'],
    localState: 'São Paulo-SP',
    title: 'Instituto Luisa Mell', 
    imageUrl: 'https://www.hypeness.com.br/1/2018/02/EDIT_Luisa-Mell.jpg', 
    purposeInstitute: ['Ptoteção de Animaais','Proteção Animal'], 
    instituteLink: 'http://ilm.org.br/', 
    description: 'Nossa preocupação com o bem-estar tem de estar ligada a todo ser vivo, e o Instituto Luisa Mell trabalha no resgate e recuperação de animais feridos ou em situação de risco, em necessidade de adoção. Os animais são protegidos, cuidados e alimentados em um abrigo com mais de 300 bichinhos, enquanto aguardam pela chance de um dono para lhes oferecer mais cuidado e amor. Para além da adoção, porém, a causa animal e do meio-ambiente como um todo é fundamental para o Instituto.'
  ),
  Institutes(
    id: '6', 
    categories: ['c1','c2','c3','c4'], 
    title: 'Associação VagaLume',
    localState: 'São Paulo-SP',
    imageUrl: 'https://www.hypeness.com.br/1/2018/02/EDIT_vagalume_azul-820x400.jpg', 
    purposeInstitute: ['Inclusão Social','Educação Infantil'], 
    instituteLink: 'https://www.vagalume.org.br/', 
    description: 'Você sabia que uma em cada três crianças chega ao jardim de infância sem as habilidades necessárias para a aprendizagem ao longo da vida? Na Amazônia, esses dados são ainda mais alarmantes, uma vez que a região ocupa 61% do território nacional e possui apenas 8% das bibliotecas públicas do país.'
  ),
  Institutes(
    id: '7', 
    categories: ['c1','c2','c3','c4'], 
    title: 'Instituto Guga Kuerten',
    localState: 'São Paulo-SP', 
    imageUrl: 'https://www.hypeness.com.br/1/2018/02/EDIT_Guga.jpg', 
    purposeInstitute: ['Inclusão Social','Educação Infantil'], 
    instituteLink: 'http://www.igk.org.br/', 
    description: 'Depois de proporcionar tantas alegrias como atleta, quando se despediu das quadras, o tenista que liderou o ranking mundial, em 2000, Gustavo Kuerten continuou trabalhando em prol da inclusão social – através do esporte. O Instituto Guga Kuerten foi criado logo após a segunda vitória de Guga em Roland Garros, com o objetivo de garantir atividades educativas, sociais e esportivas para crianças, adolescentes e pessoas com deficiência em Santa Catarina.'
  ),
  
];