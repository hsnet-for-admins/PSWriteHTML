
function New-ChartRadialType1 {
    param(
        [System.Collections.IDictionary] $Options,
        [Array] $Values,
        [Array] $Names
    )

    $Options.plotOptions = @{
        radialBar = @{
            #startAngle = -135
            #endAngle   = 225

            #startAngle = -135
            #endAngle   = 135


            hollow = @{
                margin       = 0
                size         = '70%'
                background   = '#fff'
                image        = 'undefined'
                imageOffsetX = 0
                imageOffsetY = 0
                position     = 'front'
                dropShadow   = @{
                    enabled = $true
                    top     = 3
                    left    = 0
                    blur    = 4
                    opacity = 0.24
                }
            }
            track  = @{
                background  = '#fff'
                strokeWidth = '70%'
                margin      = 0  #// margin is in pixels
                dropShadow  = @{
                    enabled = $true
                    top     = -3
                    left    = 0
                    blur    = 4
                    opacity = 0.35
                }
            }
            <#
            dataLabels = @{
                showOn = 'always'

                name   = @{
                    # fontSize = '16px'
                    # color    = 'undefined'
                    #offsetY = 120
                }
                value  = @{
                    #offsetY = 76
                    #  fontSize  = '22px'
                    #  color     = 'undefined'
                    # formatter = 'function (val) { return val + "%" }'
                }

                total  = @{
                    show  = $false
                    label = 'Average'
                }
            }
            #>
        }
    }

    $Options.fill = @{
        type     = 'gradient'
        gradient = @{
            shade            = 'dark'
            type             = 'horizontal'
            shadeIntensity   = 0.5
            gradientToColors = @('#ABE5A1')
            inverseColors    = true
            opacityFrom      = 1
            opacityTo        = 1
            stops            = @(0, 100)
        }
    }
    <# Gradient
        $Options.stroke = @{
        lineCap = 'round'
    }
    #>
    <#
    $Options.fill = @{
        type     = 'gradient'
        gradient = @{
            shade          = 'dark'
            shadeIntensity = 0.15
            inverseColors  = false
            opacityFrom    = 1
            opacityTo      = 1
            stops          = @(0, 50, 65, 91)
        }
    }
    #>
    $Options.stroke = @{
        dashArray = 4
    }

    <#

    if ('bar', 'line' -contains $Type) {
        # Some types require a more complicated dataset
        $Options.series = @( New-HTMLChartDataSet -Data $Data -DataNames $DataNames )
    } else {
        # Some types of charts require simple data sets - in particular just array
        $Options.series = $Data
        if ($null -ne $DataCategories) {
            $Options.labels = $DataCategories
        } else {
            $Options.labels = $DataNames
        }
    }
    #>
}