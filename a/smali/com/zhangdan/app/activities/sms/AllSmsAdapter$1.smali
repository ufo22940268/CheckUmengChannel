.class Lcom/zhangdan/app/activities/sms/AllSmsAdapter$1;
.super Ljava/lang/Object;
.source "AllSmsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 123
    .local v2, pos:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #setter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->tag:I
    invoke-static {v4, v5}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$002(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;I)I

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 125
    .local v3, view:Landroid/view/View;
    const v4, 0x7f090136

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 126
    .local v1, layout:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->oldView:Landroid/view/View;
    invoke-static {v4}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$100(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->oldView:Landroid/view/View;
    invoke-static {v4}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$100(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Landroid/view/View;

    move-result-object v4

    if-eq v4, v1, :cond_0

    .line 127
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->oldView:Landroid/view/View;
    invoke-static {v4}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$100(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #setter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->oldView:Landroid/view/View;
    invoke-static {v4, v1}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$102(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;Landroid/view/View;)Landroid/view/View;

    .line 130
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$1;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->oldView:Landroid/view/View;
    invoke-static {v4}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$100(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 131
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 138
    .end local v1           #layout:Landroid/widget/RelativeLayout;
    .end local v2           #pos:Ljava/lang/Integer;
    .end local v3           #view:Landroid/view/View;
    :goto_0
    return-void

    .line 133
    .restart local v1       #layout:Landroid/widget/RelativeLayout;
    .restart local v2       #pos:Ljava/lang/Integer;
    .restart local v3       #view:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1           #layout:Landroid/widget/RelativeLayout;
    .end local v2           #pos:Ljava/lang/Integer;
    .end local v3           #view:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
