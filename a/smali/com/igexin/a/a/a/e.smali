.class abstract Lcom/igexin/a/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/a/b;


# instance fields
.field a:Ljava/net/URL;

.field b:Lcom/igexin/a/a/d;

.field c:Ljava/util/Map;

.field d:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/a/e;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/a/e;->d:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/a/e;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Header name must not be null"

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/a/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/a/e;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/igexin/a/a/a/e;->e(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/igexin/a/a/a/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/d;)Lcom/igexin/a/a/b;
    .locals 1

    const-string v0, "Method must not be null"

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/igexin/a/a/a/e;->b:Lcom/igexin/a/a/d;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b;
    .locals 2

    const-string v0, "Header name must not be empty"

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Header value must not be null"

    invoke-static {p2, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Header name must not be empty"

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/igexin/a/a/a/e;->e(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/igexin/a/a/a/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/a/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/net/URL;)Lcom/igexin/a/a/b;
    .locals 1

    const-string v0, "URL must not be null"

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/igexin/a/a/a/e;->a:Ljava/net/URL;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Header name must not be null"

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/igexin/a/a/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/a/e;->a:Ljava/net/URL;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b;
    .locals 1

    const-string v0, "Cookie name must not be empty"

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cookie value must not be null"

    invoke-static {p2, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/a/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b()Lcom/igexin/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/a/e;->b:Lcom/igexin/a/a/d;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Header name must not be empty"

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/igexin/a/a/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/a/e;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Cookie name must not be empty"

    invoke-static {v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/a/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/a/e;->d:Ljava/util/Map;

    return-object v0
.end method
