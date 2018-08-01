# simple Introduce for cayley




Overview

* `Run`
  ```bash
  $ sh run.sh
  ```
* `UseCase`
  ```java
  //查询5个顶点
  graph.Vertex().GetLimit(5)
  ```
  ```json
  {
    "result": [
      {
        "id": "<bob>"
      },
      {
        "id": "<status>"
      },
      {
        "id": "cool_person"
      },
      {
        "id": "<alice>"
      },
      {
        "id": "<greg>"
      }
    ]
  }
  ```
  ```java
  //查询所有<dani> 实体
  graph.Vertex("<dani>").All()
  ```
  ```json
  {
    "result": [
      {
        "id": "<dani>"
      }
    ]
  }
  ```
  ```java
  //查询<dani> follows 的所有对象，结果标记为target
  g.V("<dani>").Tag("source").Out("<follows>").Tag("target").All()
  ```
  ```json
  {
    "result": [
      {
        "id": "<bob>",
        "source": "<dani>",
        "target": "<bob>"
      },
      {
        "id": "<greg>",
        "source": "<dani>",
        "target": "<greg>"
      }
    ]
  }
  ```
Preview
![image](https://github.com/marsfun/cayley-graph/blob/master/_img/cayley_web_query.png)
* references:
  * [RDF 1.1 N-Quads](https://www.w3.org/TR/n-quads/#simple-triples)
  * [cayley github ](https://github.com/cayleygraph/cayley)
  * [cayley.io](https://cayley.io/)