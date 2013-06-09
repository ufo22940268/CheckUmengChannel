.class abstract Lcom/igexin/a/a/c/ck;
.super Ljava/lang/Object;


# instance fields
.field b:Lcom/igexin/a/a/c/a;

.field c:Lcom/igexin/a/a/c/q;

.field protected d:Lcom/igexin/a/a/b/e;

.field protected e:Lcom/igexin/a/a/a/b;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/igexin/a/a/c/g;

.field protected h:Lcom/igexin/a/a/c/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/a/c/d;)Lcom/igexin/a/a/b/e;
    .locals 2

    const-string v0, "String input must not be null"

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    invoke-static {p2, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/a/a/b/e;

    invoke-direct {v0, p2}, Lcom/igexin/a/a/b/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/igexin/a/a/c/ck;->d:Lcom/igexin/a/a/b/e;

    new-instance v0, Lcom/igexin/a/a/c/a;

    invoke-direct {v0, p1}, Lcom/igexin/a/a/c/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/igexin/a/a/c/ck;->b:Lcom/igexin/a/a/c/a;

    iput-object p3, p0, Lcom/igexin/a/a/c/ck;->h:Lcom/igexin/a/a/c/d;

    new-instance v0, Lcom/igexin/a/a/c/q;

    iget-object v1, p0, Lcom/igexin/a/a/c/ck;->b:Lcom/igexin/a/a/c/a;

    invoke-direct {v0, v1, p3}, Lcom/igexin/a/a/c/q;-><init>(Lcom/igexin/a/a/c/a;Lcom/igexin/a/a/c/d;)V

    iput-object v0, p0, Lcom/igexin/a/a/c/ck;->c:Lcom/igexin/a/a/c/q;

    new-instance v0, Lcom/igexin/a/a/a/b;

    invoke-direct {v0}, Lcom/igexin/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/c/ck;->e:Lcom/igexin/a/a/a/b;

    iput-object p2, p0, Lcom/igexin/a/a/c/ck;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/c/ck;->c:Lcom/igexin/a/a/c/q;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/q;->a()Lcom/igexin/a/a/c/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/c/ck;->a(Lcom/igexin/a/a/c/g;)Z

    iget-object v0, v0, Lcom/igexin/a/a/c/g;->a:Lcom/igexin/a/a/c/o;

    sget-object v1, Lcom/igexin/a/a/c/o;->f:Lcom/igexin/a/a/c/o;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/c/ck;->d:Lcom/igexin/a/a/b/e;

    return-object v0
.end method

.method protected abstract a(Lcom/igexin/a/a/c/g;)Z
.end method

.method protected final v()Lcom/igexin/a/a/b/i;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/c/ck;->e:Lcom/igexin/a/a/a/b;

    invoke-virtual {v0}, Lcom/igexin/a/a/a/b;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/i;

    return-object v0
.end method
