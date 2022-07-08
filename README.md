# Challenge

Nesse desafio será necessário criar 3 endpoints e 1 cronjob

Queremos possibilitar aos usuários adicionarem nomes dos seus pokemons favoritos para receber a sua Árvore de Evolução (futuras e passadas). Para isso devemos criar 3 endpoints:

- Create endpoint que vai receber apenas o nome do pokemon
- List endpoint que vai listar 20 pokemons por página e suas evoluções (apenas futuras evoluções)
- Detail endpoint que vai mostrar com detalhes dados daquele pokémon (todas as evoluções)

*Obs: caso o pokemon não exista consiga ser achado deve ser deletado*

Esses serão os endpoints entretanto precisamos adicionar os dados das evoluções e para isso precisamos de um Cronjob/celery task/tarefa assíncrona, que deve executar a seguinte ação:

- Verificar todos os pokémons que ainda precisam sincronizar dados
- Buscar na API esses dados (API: https://pokeapi.co/docs/v2#evolution-section)
- Atualizar banco de dados com os dados


Alguns pontos que serão avaliados que serão diferenciais:

- Testes
- Qualidade de Código
- Complexidade e Runtime
- Padrão de Códigos
- Queries Optimizadas


Possiveis evoluções:

- Filtros
   - Filtrar pokemon por evolução
   - Filtrar pokemon por quantidade de evoluções
   - Filtrar por pokemons que tem evoluções o nome tem icontains
- Ordenar
- Annotates
  - Adicionar quantidade de evoluções futuras
  - Adicionar quantidade de evoluções passadas


Tempo para finalização desse mini projeto é de 1 semana, acreditamos que 3 horas seja mais do que o suficiente para terminar, entretanto caso precise de mais tempo ou tenha qualquer dúvida estamos a disposição para melhor lhe auxiliar.

O código deve ser entregue em um repositório público no github do autor. Caso haja alguma mudança no setup do projeto deve ser apropriadamente documentado, quais os passos para o setup.


# Kickstart


1. Start dev server without building it

    ```
    $ make start-dev
    ```

2. Stop server
    ```
    $ make stop
    ```

3. Restart dev server without building it
    ```
    $ make restart-dev
    ```

4. Access the nginx container (while running it)
    ```
    $ make ssh-nginx
    ```

5. Access the backend container (while running it)
    ```
    $ make ssh-backend
    ```

6. Access the database container (while running it)
    ```
    $ make ssh-db
    ```

7. Build dev
    ```
    $ make build-dev
    ```
