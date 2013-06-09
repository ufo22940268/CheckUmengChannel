.class final Lcom/igexin/a/a/c/j;
.super Lcom/igexin/a/a/c/g;


# instance fields
.field final b:Ljava/lang/StringBuilder;

.field final c:Ljava/lang/StringBuilder;

.field final d:Ljava/lang/StringBuilder;

.field e:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/igexin/a/a/c/g;-><init>(B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/c/j;->b:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/c/j;->c:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/c/j;->d:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/igexin/a/a/c/j;->e:Z

    sget-object v0, Lcom/igexin/a/a/c/o;->a:Lcom/igexin/a/a/c/o;

    iput-object v0, p0, Lcom/igexin/a/a/c/j;->a:Lcom/igexin/a/a/c/o;

    return-void
.end method
