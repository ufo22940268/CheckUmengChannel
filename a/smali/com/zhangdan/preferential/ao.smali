.class final Lcom/zhangdan/preferential/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/ShopDetailActivity;

.field private final synthetic b:[Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/ShopDetailActivity;[Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ao;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    iput-object p2, p0, Lcom/zhangdan/preferential/ao;->b:[Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/ao;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/preferential/ao;->b:[Landroid/content/Intent;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
