.class final Lcom/gridlayout/j;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/gridlayout/o;

.field public final b:Lcom/gridlayout/p;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/gridlayout/o;Lcom/gridlayout/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gridlayout/j;->c:Z

    iput-object p1, p0, Lcom/gridlayout/j;->a:Lcom/gridlayout/o;

    iput-object p2, p0, Lcom/gridlayout/j;->b:Lcom/gridlayout/p;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gridlayout/j;->a:Lcom/gridlayout/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/gridlayout/j;->c:Z

    if-nez v0, :cond_0

    const-string v0, "+>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gridlayout/j;->b:Lcom/gridlayout/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "->"

    goto :goto_0
.end method
