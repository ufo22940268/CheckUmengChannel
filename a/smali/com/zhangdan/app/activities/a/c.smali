.class final Lcom/zhangdan/app/activities/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/a/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/a/c;->a:Lcom/zhangdan/app/activities/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/a/c;->a:Lcom/zhangdan/app/activities/a/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/a/a;->dismiss()V

    return-void
.end method
