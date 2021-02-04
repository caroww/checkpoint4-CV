<?php

namespace Tests\Services;

use App\Service\Slugify;
use PHPUnit\Framework\TestCase;

class SlugifyTest extends TestCase
{
    public function testSlugify()
    {
        $slugify = new Slugify();
        $this->assertSame('je-mange', $slugify->generate("je mange"));
    }

}