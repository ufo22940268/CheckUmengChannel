.class final Lcom/zhangdan/preferential/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/as;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/as;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/aw;->a:Lcom/zhangdan/preferential/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/aw;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->r(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/u;->c()V

    return-void
.end method
