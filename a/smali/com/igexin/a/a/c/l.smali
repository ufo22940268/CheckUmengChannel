.class final Lcom/igexin/a/a/c/l;
.super Lcom/igexin/a/a/c/n;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/c/n;-><init>()V

    sget-object v0, Lcom/igexin/a/a/c/o;->c:Lcom/igexin/a/a/c/o;

    iput-object v0, p0, Lcom/igexin/a/a/c/l;->a:Lcom/igexin/a/a/c/o;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/c/l;-><init>()V

    iput-object p1, p0, Lcom/igexin/a/a/c/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/a/c/l;->d:Lcom/igexin/a/a/b/b;

    invoke-virtual {v1}, Lcom/igexin/a/a/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
