.class final Lcom/a/a/a/e/a/c;
.super Lcom/a/a/a/e/a/i;


# instance fields
.field final synthetic a:Lcom/a/a/a/e/a/a;


# direct methods
.method constructor <init>(Lcom/a/a/a/e/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/a/e/a/c;->a:Lcom/a/a/a/e/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/a/e/a/i;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/a/a/a/e/a/c;->a:Lcom/a/a/a/e/a/a;

    iget-object v1, p0, Lcom/a/a/a/e/a/c;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/a/a/a/e/a/a;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
