.class final Lcom/zhangdan/preferential/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/PickErrorActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/PickErrorActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/r;->a:Lcom/zhangdan/preferential/PickErrorActivity;

    iput p2, p0, Lcom/zhangdan/preferential/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/zhangdan/preferential/s;

    iget-object v1, p0, Lcom/zhangdan/preferential/r;->a:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-direct {v0, v1, v3}, Lcom/zhangdan/preferential/s;-><init>(Lcom/zhangdan/preferential/PickErrorActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    iget v2, p0, Lcom/zhangdan/preferential/r;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/zhangdan/preferential/r;->a:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/PickErrorActivity;->finish()V

    return-void
.end method
