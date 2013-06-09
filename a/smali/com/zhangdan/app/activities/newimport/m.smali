.class final Lcom/zhangdan/app/activities/newimport/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/k;

.field private final synthetic b:Lcom/zhangdan/app/widget/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/k;Lcom/zhangdan/app/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/m;->a:Lcom/zhangdan/app/activities/newimport/k;

    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/m;->b:Lcom/zhangdan/app/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/m;->b:Lcom/zhangdan/app/widget/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/a;->dismiss()V

    return-void
.end method
