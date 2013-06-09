.class public final Lcom/igexin/a/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/a/a;


# instance fields
.field private a:Lcom/igexin/a/a/e;

.field private b:Lcom/igexin/a/a/f;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/igexin/a/a/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/igexin/a/a/a/f;-><init>(B)V

    iput-object v0, p0, Lcom/igexin/a/a/a/d;->a:Lcom/igexin/a/a/e;

    new-instance v0, Lcom/igexin/a/a/a/g;

    invoke-direct {v0}, Lcom/igexin/a/a/a/g;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/a/d;->b:Lcom/igexin/a/a/f;

    return-void
.end method

.method public static b(Ljava/net/URL;)Lcom/igexin/a/a/a;
    .locals 1

    new-instance v0, Lcom/igexin/a/a/a/d;

    invoke-direct {v0}, Lcom/igexin/a/a/a/d;-><init>()V

    invoke-interface {v0, p0}, Lcom/igexin/a/a/a;->a(Ljava/net/URL;)Lcom/igexin/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/igexin/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/a/d;->a:Lcom/igexin/a/a/e;

    invoke-interface {v0}, Lcom/igexin/a/a/e;->k()Lcom/igexin/a/a/e;

    return-object p0
.end method

.method public final a(Ljava/net/URL;)Lcom/igexin/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/a/d;->a:Lcom/igexin/a/a/e;

    invoke-interface {v0, p1}, Lcom/igexin/a/a/e;->a(Ljava/net/URL;)Lcom/igexin/a/a/b;

    return-object p0
.end method

.method public final b()Lcom/igexin/a/a/b/e;
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/a/d;->a:Lcom/igexin/a/a/e;

    sget-object v1, Lcom/igexin/a/a/d;->a:Lcom/igexin/a/a/d;

    invoke-interface {v0, v1}, Lcom/igexin/a/a/e;->a(Lcom/igexin/a/a/d;)Lcom/igexin/a/a/b;

    iget-object v0, p0, Lcom/igexin/a/a/a/d;->a:Lcom/igexin/a/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/g;->a(Lcom/igexin/a/a/e;Lcom/igexin/a/a/a/g;)Lcom/igexin/a/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/a/d;->b:Lcom/igexin/a/a/f;

    iget-object v0, p0, Lcom/igexin/a/a/a/d;->b:Lcom/igexin/a/a/f;

    iget-object v0, p0, Lcom/igexin/a/a/a/d;->b:Lcom/igexin/a/a/f;

    invoke-interface {v0}, Lcom/igexin/a/a/f;->e()Lcom/igexin/a/a/b/e;

    move-result-object v0

    return-object v0
.end method
