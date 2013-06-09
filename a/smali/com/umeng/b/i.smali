.class final Lcom/umeng/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/b/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/umeng/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/b/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/umeng/b/i;->b:Lcom/umeng/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/b/b;->a(Z)Z

    sget-object v0, Lcom/umeng/b/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/a;->a()V

    iget-object v0, p0, Lcom/umeng/b/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/b/i;->b:Lcom/umeng/b/e;

    invoke-static {v0, v1}, Lcom/umeng/b/b;->b(Landroid/content/Context;Lcom/umeng/b/e;)V

    return-void
.end method
