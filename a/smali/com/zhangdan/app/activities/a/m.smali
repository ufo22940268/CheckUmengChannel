.class final Lcom/zhangdan/app/activities/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/a/k;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/a/m;->a:Lcom/zhangdan/app/activities/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/m;->a:Lcom/zhangdan/app/activities/a/k;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/a/k;->dismiss()V

    return-void
.end method