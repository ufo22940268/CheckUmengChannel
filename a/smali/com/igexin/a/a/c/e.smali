.class public final Lcom/igexin/a/a/c/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/igexin/a/a/c/ck;

.field private b:I

.field private c:Lcom/igexin/a/a/c/d;


# direct methods
.method private constructor <init>(Lcom/igexin/a/a/c/ck;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/a/a/c/e;->b:I

    iput-object p1, p0, Lcom/igexin/a/a/c/e;->a:Lcom/igexin/a/a/c/ck;

    return-void
.end method

.method public static a()Lcom/igexin/a/a/c/e;
    .locals 2

    new-instance v0, Lcom/igexin/a/a/c/e;

    new-instance v1, Lcom/igexin/a/a/c/aa;

    invoke-direct {v1}, Lcom/igexin/a/a/c/aa;-><init>()V

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/e;-><init>(Lcom/igexin/a/a/c/ck;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b/e;
    .locals 2

    iget v0, p0, Lcom/igexin/a/a/c/e;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/igexin/a/a/c/e;->b:I

    invoke-static {v0}, Lcom/igexin/a/a/c/d;->a(I)Lcom/igexin/a/a/c/d;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/igexin/a/a/c/e;->c:Lcom/igexin/a/a/c/d;

    iget-object v0, p0, Lcom/igexin/a/a/c/e;->a:Lcom/igexin/a/a/c/ck;

    iget-object v1, p0, Lcom/igexin/a/a/c/e;->c:Lcom/igexin/a/a/c/d;

    invoke-virtual {v0, p1, p2, v1}, Lcom/igexin/a/a/c/ck;->a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/a/c/d;)Lcom/igexin/a/a/b/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/igexin/a/a/c/d;->b()Lcom/igexin/a/a/c/d;

    move-result-object v0

    goto :goto_1
.end method
