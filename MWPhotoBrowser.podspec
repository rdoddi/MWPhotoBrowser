Pod::Spec.new do |s|
    s.name = 'MWPhotoBrowser'
    s.version = '1.0.0'
    s.license = 'MIT'
    s.summary = 'Photo browser based on v1.4.1 of MWPhotoBrowser.'
    s.description = 'This allows width-fit images with vertical scrolling or' \
                    'height-fit images with horizontal scrolling.' \
                    'Refer to MWPhotoBrowser:preferredMinScaleUsingXScale for more details.'
    s.homepage = 'https://github.com/rdoddi/MWPhotoBrowser'
    s.author = 'Ramesh'
    s.source = {
        :git => 'https://github.com/rdoddi/MWPhotoBrowser.git',
        :tag => s.version.to_s
    }
    s.platform = :ios, '5.1.1'
    s.source_files = 'MWPhotoBrowser/Classes/*.{h,m}'
    s.resources = 'MWPhotoBrowser/MWPhotoBrowser.bundle'
    s.requires_arc = true
    s.frameworks = 'MessageUI', 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MapKit'
    s.dependency 'SDWebImage', '~> 3.7'
    s.dependency 'MBProgressHUD', '~> 0.8'
    s.dependency 'DACircularProgress'
    s.dependency 'PSTCollectionView', '~> 1.2'
end
