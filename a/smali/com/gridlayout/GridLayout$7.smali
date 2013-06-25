.class Lcom/gridlayout/GridLayout$7;
.super Ljava/lang/Object;
.source "GridLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gridlayout/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gridlayout/GridLayout;


# direct methods
.method constructor <init>(Lcom/gridlayout/GridLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/gridlayout/GridLayout$7;->this$0:Lcom/gridlayout/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/gridlayout/GridLayout$7;->this$0:Lcom/gridlayout/GridLayout;

    #getter for: Lcom/gridlayout/GridLayout;->mListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Lcom/gridlayout/GridLayout;->access$400(Lcom/gridlayout/GridLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2478
    iget-object v0, p0, Lcom/gridlayout/GridLayout$7;->this$0:Lcom/gridlayout/GridLayout;

    #getter for: Lcom/gridlayout/GridLayout;->mListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Lcom/gridlayout/GridLayout;->access$400(Lcom/gridlayout/GridLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 2481
    :cond_0
    iget-object v0, p0, Lcom/gridlayout/GridLayout$7;->this$0:Lcom/gridlayout/GridLayout;

    #calls: Lcom/gridlayout/GridLayout;->invalidateStructure()V
    invoke-static {v0}, Lcom/gridlayout/GridLayout;->access$500(Lcom/gridlayout/GridLayout;)V

    .line 2482
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/gridlayout/GridLayout$7;->this$0:Lcom/gridlayout/GridLayout;

    #getter for: Lcom/gridlayout/GridLayout;->mListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Lcom/gridlayout/GridLayout;->access$400(Lcom/gridlayout/GridLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2470
    iget-object v0, p0, Lcom/gridlayout/GridLayout$7;->this$0:Lcom/gridlayout/GridLayout;

    #getter for: Lcom/gridlayout/GridLayout;->mListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Lcom/gridlayout/GridLayout;->access$400(Lcom/gridlayout/GridLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/gridlayout/GridLayout$7;->this$0:Lcom/gridlayout/GridLayout;

    #calls: Lcom/gridlayout/GridLayout;->invalidateStructure()V
    invoke-static {v0}, Lcom/gridlayout/GridLayout;->access$500(Lcom/gridlayout/GridLayout;)V

    .line 2474
    return-void
.end method
