.class final Lcom/zhangdan/preferential/k;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:[Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field final synthetic f:Lcom/zhangdan/preferential/i;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/i;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/k;->f:Lcom/zhangdan/preferential/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/k;->b:[Landroid/widget/TextView;

    return-void
.end method
