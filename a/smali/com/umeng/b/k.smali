.class final Lcom/umeng/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/b/e;

.field final synthetic b:Lcom/umeng/b/j;


# direct methods
.method constructor <init>(Lcom/umeng/b/j;Lcom/umeng/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/b/k;->b:Lcom/umeng/b/j;

    iput-object p2, p0, Lcom/umeng/b/k;->a:Lcom/umeng/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/umeng/b/k;->b:Lcom/umeng/b/j;

    iget-object v0, v0, Lcom/umeng/b/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/b/k;->a:Lcom/umeng/b/e;

    invoke-static {v0, v1}, Lcom/umeng/b/b;->a(Landroid/content/Context;Lcom/umeng/b/e;)V

    return-void
.end method
