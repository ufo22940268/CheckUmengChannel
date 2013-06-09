.class public Lcom/igexin/a/a/b/i;
.super Lcom/igexin/a/a/b/l;


# instance fields
.field private f:Lcom/igexin/a/a/c/f;

.field private g:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/igexin/a/a/c/f;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/igexin/a/a/b/b;

    invoke-direct {v0}, Lcom/igexin/a/a/b/b;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/igexin/a/a/b/i;-><init>(Lcom/igexin/a/a/c/f;Ljava/lang/String;Lcom/igexin/a/a/b/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/igexin/a/a/c/f;Ljava/lang/String;Lcom/igexin/a/a/b/b;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/igexin/a/a/b/l;-><init>(Ljava/lang/String;Lcom/igexin/a/a/b/b;)V

    invoke-static {p1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    return-void
.end method

.method private static a(Lcom/igexin/a/a/b/i;Ljava/util/List;)Ljava/lang/Integer;
    .locals 2

    invoke-static {p0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/i;

    invoke-virtual {v0, p0}, Lcom/igexin/a/a/b/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/igexin/a/a/b/i;Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/igexin/a/a/b/o;->b(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/igexin/a/a/b/o;)V
    .locals 3

    invoke-virtual {p2}, Lcom/igexin/a/a/b/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/i;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/igexin/a/a/a/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/igexin/a/a/b/o;->b(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "^\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private b(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/igexin/a/a/b/i;->a(Lcom/igexin/a/a/b/i;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/l;

    instance-of v2, v0, Lcom/igexin/a/a/b/o;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/igexin/a/a/b/o;

    invoke-direct {p0, p1, v0}, Lcom/igexin/a/a/b/i;->a(Ljava/lang/StringBuilder;Lcom/igexin/a/a/b/o;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lcom/igexin/a/a/b/i;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/igexin/a/a/b/i;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v2}, Lcom/igexin/a/a/c/f;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/igexin/a/a/b/o;->b(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-direct {v0, p1}, Lcom/igexin/a/a/b/i;->b(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private c()Lcom/igexin/a/a/d/u;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/l;

    instance-of v3, v0, Lcom/igexin/a/a/b/i;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/igexin/a/a/b/i;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/igexin/a/a/d/u;

    invoke-direct {v0, v1}, Lcom/igexin/a/a/d/u;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private c(Ljava/lang/StringBuilder;)V
    .locals 3

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/l;

    instance-of v2, v0, Lcom/igexin/a/a/b/o;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/igexin/a/a/b/o;

    invoke-direct {p0, p1, v0}, Lcom/igexin/a/a/b/i;->a(Ljava/lang/StringBuilder;Lcom/igexin/a/a/b/o;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lcom/igexin/a/a/b/i;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/igexin/a/a/b/i;

    invoke-static {v0, p1}, Lcom/igexin/a/a/b/i;->a(Lcom/igexin/a/a/b/i;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->g:Ljava/util/Set;

    if-nez v0, :cond_0

    const-string v0, "class"

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/igexin/a/a/b/i;->g:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/b/i;->g:Ljava/util/Set;

    return-object v0
.end method

.method private d(Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/l;

    invoke-virtual {v0, p1}, Lcom/igexin/a/a/b/l;->a(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/b/l;)Lcom/igexin/a/a/b/i;
    .locals 2

    invoke-static {p1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/igexin/a/a/b/l;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/b/i;->a([Lcom/igexin/a/a/b/l;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b/i;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/igexin/a/a/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b/l;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/igexin/a/a/d/u;
    .locals 1

    invoke-static {p1, p0}, Lcom/igexin/a/a/d/g;->a(Ljava/lang/String;Lcom/igexin/a/a/b/i;)Lcom/igexin/a/a/d/u;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;ILcom/igexin/a/a/b/f;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Lcom/igexin/a/a/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->a:Lcom/igexin/a/a/b/l;

    check-cast v0, Lcom/igexin/a/a/b/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->a:Lcom/igexin/a/a/b/l;

    check-cast v0, Lcom/igexin/a/a/b/i;

    iget-object v0, v0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/igexin/a/a/b/i;->c(Ljava/lang/StringBuilder;ILcom/igexin/a/a/b/f;)V

    :cond_1
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v1}, Lcom/igexin/a/a/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->c:Lcom/igexin/a/a/b/b;

    invoke-virtual {v0, p1, p3}, Lcom/igexin/a/a/b/b;->a(Ljava/lang/StringBuilder;Lcom/igexin/a/a/b/f;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_2
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b(Lcom/igexin/a/a/b/l;)Lcom/igexin/a/a/b/i;
    .locals 1

    invoke-super {p0, p1}, Lcom/igexin/a/a/b/l;->c(Lcom/igexin/a/a/b/l;)Lcom/igexin/a/a/b/l;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/i;

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b/l;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/igexin/a/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/igexin/a/a/d/u;
    .locals 2

    invoke-static {p1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/a/d/c;

    invoke-direct {v1, v0}, Lcom/igexin/a/a/d/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/igexin/a/a/d/a;->a(Lcom/igexin/a/a/d/v;Lcom/igexin/a/a/b/i;)Lcom/igexin/a/a/d/u;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/StringBuilder;ILcom/igexin/a/a/b/f;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->d()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Lcom/igexin/a/a/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/igexin/a/a/b/i;->c(Ljava/lang/StringBuilder;ILcom/igexin/a/a/b/f;)V

    :cond_1
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v1}, Lcom/igexin/a/a/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public final synthetic c(Lcom/igexin/a/a/b/l;)Lcom/igexin/a/a/b/l;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/igexin/a/a/b/i;->b(Lcom/igexin/a/a/b/l;)Lcom/igexin/a/a/b/i;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/igexin/a/a/b/i;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/igexin/a/a/b/i;->e()Lcom/igexin/a/a/b/i;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/igexin/a/a/b/i;
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/b/l;->f()Lcom/igexin/a/a/b/l;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/i;

    invoke-direct {v0}, Lcom/igexin/a/a/b/i;->d()Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic f()Lcom/igexin/a/a/b/l;
    .locals 1

    invoke-virtual {p0}, Lcom/igexin/a/a/b/i;->e()Lcom/igexin/a/a/b/i;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/igexin/a/a/c/f;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/igexin/a/a/b/l;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final j()Lcom/igexin/a/a/b/i;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->a:Lcom/igexin/a/a/b/l;

    check-cast v0, Lcom/igexin/a/a/b/i;

    return-object v0
.end method

.method public final k()Lcom/igexin/a/a/b/i;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->a:Lcom/igexin/a/a/b/l;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/b/i;->a:Lcom/igexin/a/a/b/l;

    check-cast v0, Lcom/igexin/a/a/b/i;

    invoke-direct {v0}, Lcom/igexin/a/a/b/i;->c()Lcom/igexin/a/a/d/u;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/igexin/a/a/b/i;->a(Lcom/igexin/a/a/b/i;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/i;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final l()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->a:Lcom/igexin/a/a/b/l;

    check-cast v0, Lcom/igexin/a/a/b/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/b/i;->a:Lcom/igexin/a/a/b/l;

    check-cast v0, Lcom/igexin/a/a/b/i;

    invoke-direct {v0}, Lcom/igexin/a/a/b/i;->c()Lcom/igexin/a/a/d/u;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/igexin/a/a/b/i;->a(Lcom/igexin/a/a/b/i;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final m()Lcom/igexin/a/a/d/u;
    .locals 1

    new-instance v0, Lcom/igexin/a/a/d/w;

    invoke-direct {v0}, Lcom/igexin/a/a/d/w;-><init>()V

    invoke-static {v0, p0}, Lcom/igexin/a/a/d/a;->a(Lcom/igexin/a/a/d/v;Lcom/igexin/a/a/b/i;)Lcom/igexin/a/a/d/u;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/igexin/a/a/b/i;->b(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/igexin/a/a/b/i;->c(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final p()Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->f:Lcom/igexin/a/a/c/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->a:Lcom/igexin/a/a/b/l;

    check-cast v0, Lcom/igexin/a/a/b/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->a:Lcom/igexin/a/a/b/l;

    check-cast v0, Lcom/igexin/a/a/b/i;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/i;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/igexin/a/a/b/i;->d(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic r()Lcom/igexin/a/a/b/l;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/b/i;->a:Lcom/igexin/a/a/b/l;

    check-cast v0, Lcom/igexin/a/a/b/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/igexin/a/a/b/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
