.class final Lcom/igexin/a/a/c/h;
.super Lcom/igexin/a/a/c/g;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/a/a/c/g;-><init>(B)V

    sget-object v0, Lcom/igexin/a/a/c/o;->e:Lcom/igexin/a/a/c/o;

    iput-object v0, p0, Lcom/igexin/a/a/c/h;->a:Lcom/igexin/a/a/c/o;

    iput-object p1, p0, Lcom/igexin/a/a/c/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/c/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/c/h;->b:Ljava/lang/String;

    return-object v0
.end method
