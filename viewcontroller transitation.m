// duration of animation
- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.5f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    // Get the container view - where the animation has to happen
    UIView *containerView = [transitionContext containerView];
    
    // Add the two VC views to the container. Hide the to
    [containerView addSubview:toVC.view];
    [containerView addSubview:fromVC.view];

    
    //make some animation here

    
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        

    } completion:^(BOOL finished) {
        
        
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];
}