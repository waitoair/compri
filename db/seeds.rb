require "open-uri"
puts "Creating..."
WatchList.destroy_all
User.destroy_all
Deal.destroy_all
Book.destroy_all


User.create!(email:"teste@teste.com", password: "123456")

store_urls = ["https://www.amazon.com.br/s?k=", "https://busca.saraiva.com.br/busca?q=", "https://www3.livrariacultura.com.br/busca/?ft=", "https://www.travessa.com.br/Busca.aspx?d=1&cta=00&codtipoartigoexplosao=1&bt=","https://www.submarino.com.br/busca/", "https://www.americanas.com.br/busca/"]

store_names = ["Amazon", "Saraiva", "Cultura", "Livraria Travessa", "Submarino", "Lojas Americanas"]
store_images = ["https://res.cloudinary.com/laralprb/image/upload/v1623421203/compri_mao/amazon.png", "https://logospng.org/download/saraiva/logo-saraiva-512.png", "https://res.cloudinary.com/laralprb/image/upload/v1623421239/compri_mao/livraria_cultura.png", "https://res.cloudinary.com/laralprb/image/upload/v1623421222/compri_mao/travessa.png", "https://res.cloudinary.com/laralprb/image/upload/v1623421266/compri_mao/submarinos.png", "https://res.cloudinary.com/laralprb/image/upload/v1623421189/compri_mao/americanas.png"]


book_1 = Book.create!(title: "O morro dos ventos uivantes", author: "Emily Bronte", language: "Portuguese", description: "Único romance da escritora inglesa Emily Bronte, O morro dos ventos uivantes retrata uma trágica historia de amor e obsessão em que os personagens principais são a obstinada e geniosa Catherine Earnshaw e seu irmão adotivo, Heathcliff. Grosseiro, humilhado e rejeitado, ele guarda apenas rancor no coração, mas tem com Catherine um relacionamento marcado por amor e, ao mesmo tempo, ódio. Essa ligação perdura mesmo com o casamento de Catherine com Edgar Linton.")
file_1 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623338620/compri_mao/book1.jpg')
book_1.photo.attach(io: file_1, filename: 'book1.jpg', content_type: 'image/jpg')


book_2 = Book.create!(title: "Histórias Primordiais", author: "Edgar Allan Poe", language: "Portuguese", description: "Chegou a noite. O extraordinário que arrepia. O estranho que nos arrebata. A imaginação que nos assombra. Essas são algumas das sensações que podemos sentir – e apenas tentar explicar em palavras – ao ler autores como Edgar Allan Poe, H.P. Lovecraft e Sir Arthur Conan Doyle, pela primeira vez reunidos neste box exclusivo. Aqui, você encontrará um compilado de histórias essenciais para quem sempre preferiu as sombras: 6 “Histórias primordiais” de Poe, responsável por, de certa maneira, criar os contos de terror; 6 “Histórias favoritas” de Lovecraft, eleitas pelos fãs do autor em pesquisa da comunidade The H.P. Lovecraft Archive; e 6 “Histórias de horror” de Doyle, o maior contista policial da história numa faceta desconhecida como a noite, mas essencial como nossa adoração por ela. Chegou a hora de explorar os seus instintos. Boa sorte.")
file_2 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623338681/compri_mao/book2.jpg')
book_2.photo.attach(io: file_2, filename: 'book2.jpg', content_type: 'image/jpg')


book_3 = Book.create!(title: "A Revolução Dos Bichos", author: "George Orwell", language: "Portuguese", description: " A revolução dos bichos é uma história intrigante e provocativa em que, numa primeira leitura, ressalta a fábula, caracterizada por ser um tipo de narrativa protagonizada geralmente por animais, mas que reflete ações humanas com algum ensinamento de cunho moral. No entanto, quando avançamos na história de George Orwell, percebemos que também é uma sátira política que critica tanto a corrupção dos governantes, quanto a fraqueza dos que se deixam manipular por eles. É curiosa a transformação de alguns bichos da fazenda do Sr. Jones quando se libertam da opressão inflingida pelo dono da Granja do Solar, para se tornar opressores dos próprios companheiros. Uma obra indispensável para o aprimoramento da nossa leitura crítica frente aos acontecimentos que se desenrolam no mundo em que vivemos, desenvolvendo a nossa capacidade de julgar de modo mais consciente os fatos políticos aos quais estamos diretamente implicados.")
file_3 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623338750/compri_mao/book3.jpg')
book_3.photo.attach(io: file_3, filename: 'book3.jpg', content_type: 'image/jpg')


book_4 = Book.create!(title: "Drácula", author: "Bram Stoker", language: "Portuguese", description: "Obra-prima de Bram Stoker, Drácula narra o assustador confronto entre o vampiro mais famoso da literatura, apoiado por sua legião crescente de mortos-vivos, e um grupo decidido a aniquilá-lo, liderado por Jonathan e Mina Harker e o médico holandês Van Helsing.")
file_4 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623339396/compri_mao/book4.jpg')
book_4.photo.attach(io: file_4, filename: 'book4.jpg', content_type: 'image/jpg')


book_5 = Book.create!(title:"O Ladrão De Casaca", author: "Arsène Lupin", language:"Portuguese", description: "Arsène Lupin, que conseguiu ser mais famoso que seu criador, nasceu por encomenda do editor Pierre Lafitte ao escritor Maurice Leblanc. Este livro reúne as nove histórias A prisão de Arsène Lupin, Arsène Lupin na prisão, A fuga de Arsène Lupin, O viajante misterioso, O colar da rainha, O sete de copas, O cofre de Madame Imbert, A pérola negra e outros. Quando Lupin é preso ao descer do navio em Nova Iorque, seu biógrafo já o acompanha, pois Watson sempre acompanhará Sherlock Holmes. A diferença é que aqui é o próprio Maurice Leblanc quem se transforma em personagem para contar as aventuras do protagonista de sua invenção.")
file_5 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623338900/compri_mao/book5.jpg')
book_5.photo.attach(io: file_5, filename: 'book5.jpg', content_type: 'image/jpg')


book_6 = Book.create!(title: "Os sertões", author: "Euclides da Cunha", language: "Portuguese", description: "Os sertões é dividido em seções. A primeira parte, ''A terra'', são considerações técnicas e científicas a respeito do solo, do clima e do espaço geográfico do sertão baiano.A segunda parte, ''O homem'', traz características antropológicas a respeito do sertanejo, com todos os seus conflitos sociais, políticos e psicológicos. A última parte, ''A luta'' narra a Guerra de Canudos desde o início. A verossimilhança da obra é marcada pela rica apresentação de características do espaço, tempo, personagens, como Antônio Conselheiro, e contexto histórico pelo narrador-observador.")
file_6 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623338987/compri_mao/book6.jpg')
book_6.photo.attach(io: file_6, filename: 'book6.jpg', content_type: 'image/jpg')


book_7 = Book.create!(title: "Coraline", author: "Neil Gaiman", language: "Portuguese", description: "Certas portas não devem ser abertas. E Coraline descobre isso pouco tempo depois de chegar com os pais à sua nova casa, um apartamento em um casarão antigo ocupado por vizinhos excêntricos e envolto por uma névoa insistente, um mundo de estranhezas e magia, o tipo de universo que apenas Neil Gaiman pode criar.
Ao abrir uma porta misteriosa na sala de casa, a menina se depara com um lugar macabro e fascinante. Ali, naquele outro mundo, seus outros pais são criaturas muito pálidas, com botões negros no lugar dos olhos, sempre dispostos a lhe dar atenção, fazer suas comidas preferidas e mostrar os brinquedos mais divertidos. Coraline enfim se sente... em casa. Mas essa sensação logo desaparece, quando ela descobre que o lugar guarda mistérios e perigos, e a menina se dá conta de que voltar para sua verdadeira casa vai ser muito mais difícil ― e assustador ― do que imaginava.
Publicado pela primeira vez em 2002, Coraline foi o primeiro livro de Neil Gaiman para o público infantojuvenil e se tornou uma das obras mais emblemáticas do escritor. Repleta de elementos ao mesmo tempo sombrios e lúdicos, a história conquistou crianças e adultos em todo o mundo e, em 2009, ganhou as telas de cinema em uma animação dirigida por Henry Selick, de O estranho mundo de Jack. Nesta edição especial em capa dura, com introdução do autor e projeto gráfico exclusivo, coube ao renomado ilustrador Chris Riddell dar vida ao universo mágico e aterrorizante criado por Neil Gaiman.")
file_7 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623339061/compri_mao/book7.jpg')
book_7.photo.attach(io: file_7, filename: 'book7.jpg', content_type: 'image/jpg')


book_8 = Book.create!(title: "Lord of the Flies", author: "William Golding", language: "English", description: "Lord of the Flies remains as provocative today as when it was first published in 1954, igniting passionate debate with its startling, brutal portrait of human nature. Though critically acclaimed, it was largely ignored upon its initial publication. Yet soon it became a cult favorite among both students and literary critics who compared it to J.D. Salinger's The Catcher in the Rye in its influence on modern thought and literature.")
file_8 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623339454/compri_mao/book8.jpg')
book_8.photo.attach(io: file_8, filename: 'book8.jpg', content_type: 'image/jpg')


book_9 = Book.create!(title: "Fahrenheit 451", author: "Ray Bradbury", language: "English", description: "Ray Bradbury’s internationally acclaimed novel Fahrenheit 451 is a masterwork of twentieth-century literature set in a bleak, dystopian future.
Guy Montag is a fireman. In his world, where television rules and literature is on the brink of extinction, firemen start fires rather than put them out. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden.
Montag never questions the destruction and ruin his actions produce, returning each day to his bland life and wife, Mildred, who spends all day with her television “family.” But then he meets an eccentric young neighbor, Clarisse, who introduces him to a past where people didn’t live in fear and to a present where one sees the world through the ideas in books instead of the mindless chatter of television.
When Mildred attempts suicide and Clarisse suddenly disappears, Montag begins to question everything he has ever known. He starts hiding books in his home, and when his pilfering is discovered, the fireman has to run for his life.")
file_9 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623339242/compri_mao/book9.jpg')
book_9.photo.attach(io: file_9, filename: 'book9.jpg', content_type: 'image/jpg')


book_10 = Book.create!(title: "Mrs Dalloway", author: "Virginia Woolf", language: "English", description: "Mrs. Dalloway chronicles a June day in the life of Clarissa Dalloway-a day that is taken up with running minor errands in preparation for a party and that is punctuated, toward the end, by the suicide of a young man she has never met. In giving an apparently ordinary day such immense resonance and significance-infusing it with the elemental conflict between death and life-Virginia Woolf triumphantly discovers her distinctive style as a novelist. Originally published in 1925, Mrs. Dalloway is Woolf's first complete rendering of what she described as the 'luminous envelope' of consciousness: a dazzling display of the mind's inside as it plays over the brilliant surface and darker depths of reality.")
file_10 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623339296/compri_mao/book10.jpg')
book_10.photo.attach(io: file_10, filename: 'book10.jpg', content_type: 'image/jpg')


book_11 = Book.create!(title: "Charlotte's Web", author: "E. B. White", language: "English", description: "This beloved book by E. B. White, author of Stuart Little and The Trumpet of the Swan, is a classic of children's literature that is just about perfect. This paper-over-board edition includes a foreword by two-time Newbery winning author Kate DiCamillo.
Some Pig. Humble. Radiant. These are the words in Charlotte's Web, high up in Zuckerman's barn. Charlotte's spiderweb tells of her feelings for a little pig named Wilbur, who simply wants a friend. They also express the love of a girl named Fern, who saved Wilbur's life when he was born the runt of his litter.
E. B. White's Newbery Honor Book is a tender novel of friendship, love, life, and death that will continue to be enjoyed by generations to come. It contains illustrations by Garth Williams, the acclaimed illustrator of E. B. White's Stuart Little and Laura Ingalls Wilder's Little House series, among many other books.
Whether enjoyed in the classroom or for homeschooling or independent reading, Charlotte's Web is a proven favorite.")
file_11 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623339594/compri_mao/book11.jpg')
book_11.photo.attach(io: file_11, filename: 'book11.jpg', content_type: 'image/jpg')


book_12 =Book.create!(title: "Frankenstein", author: "Mary Shelley", language: "English", description: "A terrifying vision of scientific progress without moral limits, Mary Shelley's Frankenstein leads the reader on an unsettling journey from the sublime beauty of the Swiss alps to the desolate waste of the arctic circle. This Penguin Classics edition is edited with an introduction and notes by Maurice Hindle.
Obsessed with the idea of creating life itself, Victor Frankenstein plunders graveyards for the material with which to fashion a new being, shocking his creation to life with electricity. But this botched creature, rejected by its creator and denied human companionship, sets out to destroy Frankenstein and all that he holds dear. Mary Shelley's chilling gothic tale was conceived when she was only eighteen, living with her lover Percy Shelley near Lord Byron's villa on Lake Geneva. It would become the world's most famous work of Gothic horror, and Frankenstein's monster an instantly-recognisable symbol of the limits of human creativity.")
file_12 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623339715/compri_mao/book12.jpg')
book_12.photo.attach(io: file_12, filename: 'book12.jpg', content_type: 'image/jpg')


book_13 = Book.create!(title: "The Hobbit", author: "J. R. R. Tolkien", language: "English", description: "Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely travelling further than the pantry of his hobbit-hole in Bag End. But his contentment is disturbed when the wizard, Gandalf, and a company of thirteen dwarves arrive on his doorstep one day, to whisk him away on a journey ‘there and back again’. They have a plot to raid the treasure hoard of Smaug the Magnificent, a large and very dangerous dragon…")
file_13 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623339828/compri_mao/book13.jpg')
book_13.photo.attach(io: file_13, filename: 'book13.jpg', content_type: 'image/jpg')


book_14 = Book.create!(title: "Venced Al Corsario", author: "Juan Antonio Perez-Foncea", language: "Español", description: "En la historia de España hay abundantes lagunas y sucesos por desentrañar. Mucho se ha escrito sobre el supuesto desastre de la conocida como Armada Invencible, cuando en realidad hubo otra flota, en este caso británica, que sí fracasó estrepitosamente en su asalto a las costas españolas, allá por 1589. Ese fiasco llevó a Isabel I de Inglaterra a castigar al corsario Drake, responsable de la derrota, con la prohibición de embarcar durante varios años. Sin embargo, Drake ideó durante ese tiempo un ambicioso plan destinado a ganar la guerra a España y acabar al fin con su dominio en América.")
file_14 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623339976/compri_mao/book14.jpg')
book_14.photo.attach(io: file_14, filename: 'book14.jpg', content_type: 'image/jpg')


book_15 = Book.create!(title: "Relato de un náufrago", author: "Gabriel García Márquez", language: "Español", description: "Con este libro, Gabriel García Márquez se descubrió a sí mismo como un narrador. Sin embargo, la intención primera era escribir un reportaje sobre un hombre, Luis Alejandro Velasco, que estuvo diez días a la deriva en una balsa mecida por el mar Caribe. El futuro Nobel de Literatura y entonces joven reportero que era García Márquez escuchó el relato de los hechos de boca de su protagonista y los transformó, tal vez sin pretenderlo, en un prodigioso ejercicio literario, una narración escueta y vigorosa donde late el pulso de un gran escritor. La publicación por entregas del reportaje en El Espectador de Bogotá supuso un alboroto político considerable -se revelaba la existencia de contrabando ilegal en un buque de la Armada colombiana, lo que costó la vida de siete marineros y el naufragio, más afortunado, de Velasco- y el exilio para su autor.")
file_15 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623340129/compri_mao/book15.jpg')
book_15.photo.attach(io: file_15, filename: 'book15.jpg', content_type: 'image/jpg')


book_16 = Book.create!(title: "La ciudad y los perros", author: "Mario Vargas Llosa", language: "Español", description: "En 1962, La ciudad y los perros recibía el Premio Biblioteca Breve y unos meses más tarde era publicada tras sortear la censura franquista. Así comenzaba la andadura literaria de esta obra con la que Mario Vargas Llosa alcanzó el reconocimiento internacional y que hoy considerada una de las mejores novelas en español del siglo xx. La ciudad y los perros no es solamente una diatriba contra la brutalidad, sino también es un ataque frontal al concepto erróneo de virilidad y a una educación castrense mal entendida. A lo largo de las páginas de esta extraordinaria novela, la vehemencia y la pasión de la juventud se desbocan hasta llegar a una furia, una rabia y un fanatismo que anulan toda sensibilidad.")
file_16 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623340353/compri_mao/book16.jpg')
book_16.photo.attach(io: file_16, filename: 'book16.jpg', content_type: 'image/jpg')


book_17 = Book.create!(title: "O Príncipe da Névoa", author: "Carlos Ruiz Zafón", language: "Español", description: "Em 1943, a família do jovem Max Carver muda-se para um vilarejo no litoral, por decisão do pai, um relojoeiro e inventor. Porém, a nova casa dos Carver está cercada de mistérios. Atrás do imóvel, Max descobre um jardim abandonado, contendo uma estranha estátua e símbolos desconhecidos.
Os novos moradores se sentem cada vez mais ansiosos: a irmã de Max, Alicia, tem sonhos perturbadores, enquanto a outra irmã, Irina, ouve vozes que sussurram para ela de um velho armário. Com a ajuda de Roland, um novo amigo, Max também descobre os restos de um barco que afundou há muitos anos, numa terrível tempestade. Todos a bordo morreram na ocasião, menos um homem - um engenheiro que construiu o farol no fim da praia.
Enquanto os adolescentes exploram o naufrágio, investigam os mistérios e vivem um primeiro amor, um diabólico personagem surge na trama. Trata-se do Príncipe da Névoa, um ser capaz de conceder desejos a uma pessoa, ainda que, em troca, cobre um preço demasiadamente alto.")
file_17 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623340414/compri_mao/book17.jpg')
book_17.photo.attach(io: file_17, filename: 'book17.jpg', content_type: 'image/jpg')


book_18 = Book.create!(title: "La Celestina", author: "Fernando de Rojas", language: "Español", description: "La Celestina es una magnífica historia a la cual también se le conoce como Tragicomedia de Calisto y Melibea, obra de Fernando de Rojas, escritor español que se halló entre la Edad Media y el Renacimiento, uniendo en sus escritos estas etapas tan convulsas de la historia. Se dice que tuvo cierto apoyo de una mano misteriosa al agregarle cinco actos más a este relato, pero aun así sigue siendo un gran clásico.
La historia cuenta los amores ilícitos de los jóvenes Calisto y Melibea, quienes son auxiliados por Celestina, una vieja alcahueta que también es ayudada por una vasta corte de criados para alcanzar la dicha de los muchachos.")
file_18 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623340489/compri_mao/book18.jpg')
book_18.photo.attach(io: file_18, filename: 'book18.jpg', content_type: 'image/jpg')


book_19 = Book.create!(title: "Les liaisons dangereuses", author: "Pierre Choderlos de Laclos", language: "Francês", description: "Les Liaisons dangereuses, œuvre écrite par Laclos en 1782, est un roman épistolaire à l'agencement subtil qui reflète son intrigue tortueuse. La libertine Marquise de Merteuil veut se venger de son ancien amant en pervertissant sa future, la candide Cécile tout juste sortie du couvent. Mais son allié Valmont refuse la mission, trop occupé de son côté à séduire la dévote Madame de Tourvel.")
file_19 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623340551/compri_mao/book19.jpg')
book_19.photo.attach(io: file_19, filename: 'book19.jpg', content_type: 'image/jpg')


book_20 = Book.create!(title: "Gil Blas de Santillana", author: "Alain-René Lesage", language: "Francês", description: "L’Histoire de Gil Blas de Santillane narre, à la première personne, comment Gil Blas, né dans la misère d’un écuyer et d’une femme de chambre de Santillane, en Cantabrie, quitte Oviedo à l’âge de dix-sept ans pour se rendre à l’Université de Salamanque, après avoir été éduqué par son oncle chanoine. Son avenir étudiant est rapidement bouleversé lorsque, à peine en route, le hasard le donne pour compagnon et pour complice forcé à des voleurs de grand chemin et lui fait faire la connaissance désagréable de la justice. La nécessité le fait valet, puis les vicissitudes de la vie le promènent par tous les degrés de la domesticité et le mettent à même d’observer de près toutes les classes de la société, dans l’État et dans l’Église. Il est mêlé à des fripons de tout étage et, par contagion de l’exemple plus que par nature, il pratique lui-même la friponnerie, et avec d’autant moins de scrupule qu’elle s’exerce plus en grand.")
file_20 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623340594/compri_mao/book20.jpg')
book_20.photo.attach(io: file_20, filename: 'book20.jpg', content_type: 'image/jpg')


book_21 = Book.create!(title: "Madame Bovary", author: "Gustave Flaubert", language: "Francês", description: "Madame Bovary C'est l'histoire d'une femme mal mariée, de son médiocre époux, de ses amants égoïstes et vains, de ses rêves, de ses chimères, de sa mort. C'est l'histoire d'une province étroite, dévote et bourgeoise. C'est, aussi, l'histoire du roman français. Rien, dans ce tableau, n'avait de quoi choquer la société du Second Empire. Mais, inexorable comme une tragédie, flamboyant comme un drame, mordant comme une comédie, le livre s'était donné une arme redoutable : le style. Pour ce vrai crime, Flaubert se retrouva en correctionnel.
Aucun roman n'est innocent : celui-là moins qu'un autre. Lire Madame Bovary, au XXIe siècle, c'est affronter le scandale que représente une œuvre aussi sincère qu'impérieuse. Dans chacune de ses phrases, Flaubert a versé une dose de cet arsenic dont Emma Bovary s'empoisonne : c'est un livre offensif, corrosif, dont l'ironie outrage toutes nos valeurs, et la littérature même, qui ne s'en est jamais vraiment remise.")
file_21 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623340666/compri_mao/book21.jpg')
book_21.photo.attach(io: file_21, filename: 'book21.jpg', content_type: 'image/jpg')


book_22 = Book.create!(title: "The Anomaly", author: "Hervé Le Tellier", language: "Francês", description: "In June 2021, a senseless event upends the lives of hundreds of men and women, all passengers on a flight from Paris to New York. Among them: Blake, a respectable family man, though he works as a contract killer; Slimboy, a Nigerian pop star tired of living a lie; Joanna, a formidable lawyer whose flaws have caught up with her; and Victor Miesel, a critically acclaimed yet commercially unsuccessful writer who suddenly becomes a cult hit.
All of them believed they had double lives. None imagined just how true that was.")
file_22 = URI.open('https://res.cloudinary.com/laralprb/image/upload/v1623340707/compri_mao/book22.jpg')
book_22.photo.attach(io: file_22, filename: 'book22.jpg', content_type: 'image/jpg')


Book.all.each do |book|
  (0..store_names.count - 1).each do |index|
    store = store_names[index]
    image = store_images[index]
    url = store_urls[index] + book.title
    deal = Deal.create!(store: store, book: book, price: rand(14.9..62.5).round(2), url: url )
    puts "criado o deal para a store #{store}"
    file = URI.open(image)
    deal.photo.attach(io: file, filename: "#{store}.jpg", content_type: 'image/jpg')
  end
end

puts "Finish!"

# require 'open-uri'
# require 'nokogiri'
# puts "Cleaning database..."
# Book.destroy_all
# puts "Database cleaned"
# url = 'http://books.toscrape.com/index.html'
# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)
# authors = ['Shel Silverstein', 'Sarah Waters','Michel Houellebecq', 'Gillian Flynn', 'Yuval Harari', 'IMA J. PASTULA PhD', 'Don Raskin', 'Karen J. Hicks', 'Daniel James Brown', 'Aracelis Girmay', 'Janine Mendenhall', 'Katherine Duncan-Jones', 'Hina Belitz', 'Bryan Lee O malley', 'Siimon Reynolds', 'Michael Azerrad', 'Tyehimba Jess', 'Edgar Allan Poe', 'Todd Seavey', 'S. Bedford']
# prices = []
# titles = []
# html_doc.search('.product_pod h3 a').to_a.each do |element|
#   title = element.attribute('title').value
#   titles << title
# end
# html_doc.search('.product_pod .product_price .price_color').to_a.each do |element|
#   price = element.text.delete('£').to_f
#   prices << price
# end
# books = [titles, prices, authors]
# 20.times do |i|
#   book = Book.create!(
#     title: books[0][i - 1],
#     language: 'english',
#     price: books[1][i - 1],
#     author: books[2][i - 1]
#   )
#   puts "book #{book.id} is created."
# end
